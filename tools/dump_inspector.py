import argparse
import logging
import os
import re
import sqlite3
from dataclasses import dataclass
from pathlib import Path

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger = logging.getLogger("dump_inspector")

DEFAULT_DUMP_PATH = r"c:\Users\everl\OneDrive\Рабочий стол\Il2CppDumper-net8.0\dump.cs"
DEFAULT_DB_PATH = "dump_index.sqlite3"

IMAGE_RE = re.compile(r"^// Image (\d+): (.+?) - (\d+)\s*$")
NAMESPACE_RE = re.compile(r"^// Namespace:\s*(.*)\s*$")
TYPE_RE = re.compile(
    r"^(?P<vis>public|internal|private|protected)?\s*"
    r"(?P<mod>(?:static|sealed|abstract|readonly|partial)\s+)*"
    r"(?P<kind>class|struct|enum|interface)\s+"
    r"(?P<name>[^\s:]+)"
    r"(?:\s*:\s*(?P<bases>.+?))?\s*//\s*TypeDefIndex:\s*(?P<idx>\d+)\s*$"
)
RVA_RE = re.compile(
    r"^\s*//\s*RVA:\s*(?P<rva>0x[0-9A-Fa-f]+|-1)\s+Offset:\s*(?P<offset>0x[0-9A-Fa-f]+|-1)\s+VA:\s*(?P<va>0x[0-9A-Fa-f]+|-1)"
)
FIELD_RE = re.compile(
    r"^\t(?P<decl>.+?)\s+(?P<name>[A-Za-z0-9_<>]+);\s*//\s*(?P<offset>0x[0-9A-Fa-f]+)\s*$"
)
CONST_RE = re.compile(
    r"^\t(?P<decl>(?:public|private|internal|protected)\s+const\s+.+?)\s+(?P<name>[A-Za-z0-9_]+)\s*=\s*(?P<val>.+?);\s*$"
)


@dataclass
class TypeRecord:
    type_def_index: int
    image_id: int
    namespace: str
    kind: str
    name: str
    bases: str
    line_start: int
    line_end: int


def init_db(conn: sqlite3.Connection) -> None:
    conn.executescript(
        """
        PRAGMA journal_mode = WAL;
        PRAGMA synchronous = NORMAL;

        CREATE TABLE IF NOT EXISTS images (
            image_id INTEGER PRIMARY KEY,
            name TEXT NOT NULL,
            start_type_index INTEGER NOT NULL
        );

        CREATE TABLE IF NOT EXISTS types (
            type_def_index INTEGER PRIMARY KEY,
            image_id INTEGER NOT NULL,
            namespace TEXT NOT NULL,
            kind TEXT NOT NULL,
            name TEXT NOT NULL,
            bases TEXT NOT NULL,
            line_start INTEGER NOT NULL,
            line_end INTEGER NOT NULL
        );

        CREATE TABLE IF NOT EXISTS fields (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            type_def_index INTEGER NOT NULL,
            name TEXT NOT NULL,
            decl TEXT NOT NULL,
            offset TEXT NOT NULL,
            line_no INTEGER NOT NULL
        );

        CREATE TABLE IF NOT EXISTS methods (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            type_def_index INTEGER NOT NULL,
            name TEXT NOT NULL,
            signature TEXT NOT NULL,
            rva TEXT NOT NULL,
            file_offset TEXT NOT NULL,
            line_no INTEGER NOT NULL
        );

        CREATE INDEX IF NOT EXISTS idx_types_name ON types(name);
        CREATE INDEX IF NOT EXISTS idx_types_image ON types(image_id);
        CREATE INDEX IF NOT EXISTS idx_fields_name ON fields(name);
        CREATE INDEX IF NOT EXISTS idx_fields_type ON fields(type_def_index);
        CREATE INDEX IF NOT EXISTS idx_methods_name ON methods(name);
        CREATE INDEX IF NOT EXISTS idx_methods_rva ON methods(rva);
        CREATE INDEX IF NOT EXISTS idx_methods_type ON methods(type_def_index);
        """
    )


def resolve_image_id(type_idx: int, image_starts: list[tuple[int, int]]) -> int:
    current_img = 0
    for img_id, start_idx in image_starts:
        if type_idx >= start_idx:
            current_img = img_id
        else:
            break
    return current_img


def extract_method_name(signature: str) -> str:
    head = signature.split("(", 1)[0].strip()
    tokens = head.split()
    return tokens[-1] if tokens else signature


def build_index(dump_path: Path, db_path: Path, only_image0: bool = False) -> None:
    if not dump_path.is_file():
        raise FileNotFoundError(f"Файл дампа не найден: {dump_path}")

    if db_path.exists():
        db_path.unlink()

    conn = sqlite3.connect(db_path)
    init_db(conn)

    images: list[tuple[int, str, int]] = []
    image_starts: list[tuple[int, int]] = []
    types_batch: list[tuple[int, int, str, str, str, str, int, int]] = []
    fields_batch: list[tuple[int, str, str, str, int]] = []
    methods_batch: list[tuple[int, str, str, str, str, int]] = []

    current_ns = ""
    current_type: TypeRecord | None = None
    pending_rva: tuple[str, str, int] | None = None

    logger.info("Чтение и парсинг %s ...", dump_path)
    with dump_path.open("r", encoding="utf-8", errors="replace") as f:
        for line_no, raw_line in enumerate(f, 1):
            line = raw_line.rstrip("\r\n")

            img_m = IMAGE_RE.match(line)
            if img_m:
                img_id = int(img_m.group(1))
                img_name = img_m.group(2)
                start_idx = int(img_m.group(3))
                images.append((img_id, img_name, start_idx))
                image_starts.append((img_id, start_idx))
                continue

            ns_m = NAMESPACE_RE.match(line)
            if ns_m:
                current_ns = ns_m.group(1).strip()
                continue

            type_m = TYPE_RE.match(line)
            if type_m:
                if current_type is not None:
                    types_batch.append(
                        (
                            current_type.type_def_index,
                            current_type.image_id,
                            current_type.namespace,
                            current_type.kind,
                            current_type.name,
                            current_type.bases,
                            current_type.line_start,
                            line_no - 1,
                        )
                    )
                t_idx = int(type_m.group("idx"))
                img_id = resolve_image_id(t_idx, image_starts)
                if only_image0 and img_id > 0:
                    current_type = None
                    break
                current_type = TypeRecord(
                    type_def_index=t_idx,
                    image_id=img_id,
                    namespace=current_ns,
                    kind=type_m.group("kind"),
                    name=type_m.group("name"),
                    bases=(type_m.group("bases") or "").strip(),
                    line_start=line_no,
                    line_end=line_no,
                )
                pending_rva = None
                continue

            if current_type is None:
                continue

            rva_m = RVA_RE.match(line)
            if rva_m:
                pending_rva = (rva_m.group("rva"), rva_m.group("offset"), line_no)
                continue

            if pending_rva is not None:
                stripped = line.strip()
                if stripped.startswith("["):
                    continue
                sig = stripped.removesuffix("{ }").strip()
                m_name = extract_method_name(sig)
                methods_batch.append(
                    (
                        current_type.type_def_index,
                        m_name,
                        sig,
                        pending_rva[0],
                        pending_rva[1],
                        line_no,
                    )
                )
                pending_rva = None
                continue

            field_m = FIELD_RE.match(line)
            if field_m:
                fields_batch.append(
                    (
                        current_type.type_def_index,
                        field_m.group("name"),
                        field_m.group("decl").strip(),
                        field_m.group("offset"),
                        line_no,
                    )
                )
                continue

            const_m = CONST_RE.match(line)
            if const_m:
                fields_batch.append(
                    (
                        current_type.type_def_index,
                        const_m.group("name"),
                        f"{const_m.group('decl').strip()} = {const_m.group('val')}",
                        "const",
                        line_no,
                    )
                )

        if current_type is not None:
            types_batch.append(
                (
                    current_type.type_def_index,
                    current_type.image_id,
                    current_type.namespace,
                    current_type.kind,
                    current_type.name,
                    current_type.bases,
                    current_type.line_start,
                    line_no,
                )
            )

    with conn:
        conn.executemany("INSERT INTO images VALUES (?, ?, ?)", images)
        conn.executemany("INSERT INTO types VALUES (?, ?, ?, ?, ?, ?, ?, ?)", types_batch)
        conn.executemany(
            "INSERT INTO fields (type_def_index, name, decl, offset, line_no) VALUES (?, ?, ?, ?, ?)",
            fields_batch,
        )
        conn.executemany(
            "INSERT INTO methods (type_def_index, name, signature, rva, file_offset, line_no) VALUES (?, ?, ?, ?, ?, ?)",
            methods_batch,
        )

    conn.close()
    logger.info(
        "Индекс собран: %d сборок, %d типов, %d полей, %d методов -> %s",
        len(images),
        len(types_batch),
        len(fields_batch),
        len(methods_batch),
        db_path,
    )


def print_summary(conn: sqlite3.Connection) -> None:
    cur = conn.cursor()
    total_images = cur.execute("SELECT COUNT(*) FROM images").fetchone()[0]
    total_types = cur.execute("SELECT COUNT(*) FROM types").fetchone()[0]
    img0_types = cur.execute("SELECT COUNT(*) FROM types WHERE image_id = 0").fetchone()[0]
    img0_methods = cur.execute(
        "SELECT COUNT(*) FROM methods m JOIN types t ON m.type_def_index = t.type_def_index WHERE t.image_id = 0"
    ).fetchone()[0]
    img0_fields = cur.execute(
        "SELECT COUNT(*) FROM fields f JOIN types t ON f.type_def_index = t.type_def_index WHERE t.image_id = 0"
    ).fetchone()[0]

    print(f"=== СВОДКА ДАМПА ===")
    print(f"Всего сборок (Images):        {total_images}")
    print(f"Всего проиндексировано типов: {total_types}")
    print(f"Assembly-CSharp (Image 0):    {img0_types} типов, {img0_fields} полей, {img0_methods} методов\n")

    print("=== ТОП-15 КРУПНЕЙШИХ КЛАССОВ В ASSEMBLY-CSHARP (ПО ЧИСЛУ МЕТОДОВ) ===")
    rows = cur.execute(
        """
        SELECT t.type_def_index, t.namespace, t.name, COUNT(m.id) AS m_cnt, t.line_start, t.line_end
        FROM types t
        LEFT JOIN methods m ON m.type_def_index = t.type_def_index
        WHERE t.image_id = 0 AND t.name NOT LIKE '%<%'
        GROUP BY t.type_def_index
        ORDER BY m_cnt DESC
        LIMIT 15
        """
    ).fetchall()
    for idx, ns, name, m_cnt, l_start, l_end in rows:
        full_name = f"{ns}.{name}" if ns else name
        print(f"  [TypeDef {idx:3d}] {full_name:<35} | методов: {m_cnt:3d} | строки: {l_start}..{l_end}")


def inspect_type(conn: sqlite3.Connection, type_query: str) -> None:
    cur = conn.cursor()
    types = cur.execute(
        """
        SELECT type_def_index, image_id, namespace, kind, name, bases, line_start, line_end
        FROM types
        WHERE name LIKE ?
        ORDER BY image_id, type_def_index
        LIMIT 20
        """,
        (f"%{type_query}%",),
    ).fetchall()

    if not types:
        print(f"Типы по запросу '{type_query}' не найдены.")
        return

    for t_idx, img_id, ns, kind, name, bases, l_start, l_end in types:
        full_name = f"{ns}.{name}" if ns else name
        base_str = f" : {bases}" if bases else ""
        print(f"\n======================================================================")
        print(f"[{kind}] {full_name}{base_str} (TypeDefIndex: {t_idx}, Image: {img_id}, Lines: {l_start}..{l_end})")
        print(f"======================================================================")

        fields = cur.execute(
            "SELECT offset, decl, name, line_no FROM fields WHERE type_def_index = ? ORDER BY id",
            (t_idx,),
        ).fetchall()
        if fields:
            print("  -- Поля / константы --")
            for offset, decl, f_name, line_no in fields:
                print(f"    [{offset:<6}] {decl} {f_name} (line {line_no})")

        methods = cur.execute(
            "SELECT rva, signature, line_no FROM methods WHERE type_def_index = ? ORDER BY id",
            (t_idx,),
        ).fetchall()
        if methods:
            print("  -- Методы --")
            for rva, sig, line_no in methods:
                print(f"    [RVA {rva:<10}] {sig} (line {line_no})")


def search_methods(conn: sqlite3.Connection, query: str, image0_only: bool) -> None:
    cur = conn.cursor()
    sql = """
        SELECT t.name, m.rva, m.file_offset, m.signature, m.line_no
        FROM methods m
        JOIN types t ON m.type_def_index = t.type_def_index
        WHERE (m.name LIKE ? OR m.rva = ?)
    """
    if image0_only:
        sql += " AND t.image_id = 0"
    sql += " ORDER BY t.image_id, m.line_no LIMIT 100"

    rows = cur.execute(sql, (f"%{query}%", query)).fetchall()
    for t_name, rva, f_off, sig, line_no in rows:
        print(f"[line {line_no:6d}] [RVA {rva:<10} | Off {f_off:<10}] {t_name} :: {sig}")


def main() -> None:
    default_dump = os.environ.get("DUMP_PATH", DEFAULT_DUMP_PATH)
    default_db = os.environ.get("DB_PATH", DEFAULT_DB_PATH)

    parser = argparse.ArgumentParser(description="Индексатор и инспектор Il2Cpp dump.cs")
    parser.add_argument("--dump", type=Path, default=Path(default_dump), help="Путь к dump.cs")
    parser.add_argument("--db", type=Path, default=Path(default_db), help="Путь к SQLite базе индекса")
    parser.add_argument("--reindex", action="store_true", help="Принудительно пересобрать индекс")
    parser.add_argument("--all-images", action="store_true", help="Индексировать все 98 сборок (по умолчанию только Image 0)")
    parser.add_argument("--summary", action="store_true", help="Вывести общую сводку по дампу")
    parser.add_argument("--type", type=str, help="Показать поля и методы класса по имени")
    parser.add_argument("--method", type=str, help="Поиск метода по имени или точному RVA (например 0x1AED478)")
    args = parser.parse_args()

    if args.reindex or not args.db.exists():
        build_index(args.dump, args.db, only_image0=not args.all_images)

    conn = sqlite3.connect(args.db)
    try:
        if args.summary:
            print_summary(conn)
        if args.type:
            inspect_type(conn, args.type)
        if args.method:
            search_methods(conn, args.method, image0_only=not args.all_images)
        if not (args.summary or args.type or args.method):
            print_summary(conn)
    finally:
        conn.close()


if __name__ == "__main__":
    main()
