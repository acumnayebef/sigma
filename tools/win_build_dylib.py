import argparse
import logging
import os
import shutil
import subprocess
import tempfile
import zipfile
from pathlib import Path

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger = logging.getLogger("win_build_dylib")


def compile_dylib(
    source_file: Path,
    output_dylib: Path,
    clang_bin: str,
    sdk_path: Path,
    min_ios: str = "15.0",
) -> None:
    if not source_file.is_file():
        raise FileNotFoundError(f"Исходный файл не найден: {source_file}")
    if not sdk_path.is_dir():
        raise FileNotFoundError(f"iOS SDK не найден по пути: {sdk_path}")

    cmd = [
        clang_bin,
        "-target", f"arm64-apple-ios{min_ios}",
        "-isysroot", str(sdk_path),
        "-std=c++20",
        "-fobjc-arc",
        "-dynamiclib",
        "-O2",
        "-Wl,-install_name,@executable_path/Frameworks/" + output_dylib.name,
        "-framework", "Foundation",
        "-framework", "UIKit",
        "-framework", "CoreGraphics",
        "-framework", "QuartzCore",
        str(source_file),
        "-o", str(output_dylib),
    ]

    logger.info("Компиляция %s -> %s ...", source_file.name, output_dylib)
    res = subprocess.run(cmd, capture_output=True, text=True, check=False)
    if res.returncode != 0:
        logger.error("Ошибка компиляции:\n%s", res.stderr)
        raise RuntimeError(f"clang++ завершился с кодом {res.returncode}")
    logger.info("Сборка успешно завершена: %s (%d байт)", output_dylib, output_dylib.stat().st_size)


def stage_into_ipa(ipa_path: Path, dylib_path: Path, out_ipa_path: Path) -> None:
    if not ipa_path.is_file():
        raise FileNotFoundError(f"IPA файл не найден: {ipa_path}")

    with tempfile.TemporaryDirectory() as tmp_dir:
        tmp_root = Path(tmp_dir)
        logger.info("Распаковка %s ...", ipa_path.name)
        with zipfile.ZipFile(ipa_path, "r") as zf:
            zf.extractall(tmp_root)

        payload_dir = tmp_root / "Payload"
        apps = list(payload_dir.glob("*.app"))
        if not apps:
            raise RuntimeError("Внутри Payload/ не найден каталог *.app")

        app_dir = apps[0]
        frameworks_dir = app_dir / "Frameworks"
        frameworks_dir.mkdir(parents=True, exist_ok=True)

        target_dylib = frameworks_dir / dylib_path.name
        shutil.copy2(dylib_path, target_dylib)
        logger.info("Скопирован %s -> %s", dylib_path.name, target_dylib.relative_to(tmp_root))

        logger.info("Упаковка модифицированного IPA -> %s ...", out_ipa_path)
        with zipfile.ZipFile(out_ipa_path, "w", compression=zipfile.ZIP_DEFLATED) as zf:
            for file_path in tmp_root.rglob("*"):
                if file_path.is_file():
                    arcname = file_path.relative_to(tmp_root).as_posix()
                    zf.write(file_path, arcname)

    logger.info("Готово: %s", out_ipa_path)


def main() -> None:
    default_sdk = os.environ.get("IOS_SDK_PATH", r"C:\theos\sdks\iPhoneOS16.5.sdk")
    default_clang = os.environ.get("CLANG_BIN", "clang++")
    default_ipa = os.environ.get("TARGET_IPA", "")

    parser = argparse.ArgumentParser(description="Сборка build.mm -> .dylib на Windows для Sideload iOS (No-JIT / No-JB)")
    parser.add_argument("--src", type=Path, default=Path("build.mm"), help="Путь к точке сборки build.mm")
    parser.add_argument("--out", type=Path, default=Path("TrinityOnesMod.dylib"), help="Имя выходного .dylib")
    parser.add_argument("--sdk", type=Path, default=Path(default_sdk), help="Путь к iPhoneOS.sdk")
    parser.add_argument("--clang", type=str, default=default_clang, help="Путь к бинарнику clang++")
    parser.add_argument("--min-ios", type=str, default="15.0", help="Минимальная версия iOS")
    parser.add_argument("--ipa", type=Path, default=Path(default_ipa) if default_ipa else None, help="Опционально: путь к .ipa для копирования dylib в Frameworks/")
    parser.add_argument("--out-ipa", type=Path, default=Path("patched_mod.ipa"), help="Выходной .ipa")
    args = parser.parse_args()

    compile_dylib(args.src, args.out, args.clang, args.sdk, args.min_ios)

    if args.ipa:
        stage_into_ipa(args.ipa, args.out, args.out_ipa)


if __name__ == "__main__":
    main()
