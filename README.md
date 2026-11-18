# ONES Basketball iOS Mod Menu (No-JIT / No-Jailbreak / Sideload)

Автономная модификация (`.dylib`) для iOS-игры **ONES Basketball** (Unity IL2CPP, `arm64`), спроектированная специально под метод **Sideload без Jailbreak и без JIT**.

Автор и реверс-инжиниринг: **[@xantapers](https://t.me/xantapers)**

---

## Особенности архитектуры (No-JIT / No-JB)
На неджейлбрейкнутых устройствах iOS без активного JIT любая попытка пропатчить сегмент кода `__TEXT` (через `mprotect` / `MSHookFunction` / inline-хуки) приводит к немедленному завершению процесса ядром (`EXC_BAD_ACCESS` / `CODESIGNING`).

Модификация работает через два полностью легальных для ядра iOS механизма:
1. **Heap Field Patching (`__DATA` / куча)** — чтение указателей на активные синглтоны (`GameManager.Instance`, `ShotClock.Instance`, `OvertimeClock.Instance`, `Heat.Instance`, `StyleScore.Instance`) и модификация их полей в оперативной памяти с частотой 30 Гц.
2. **Direct RVA Invocation** — прямой вызов скомпилированных нативных методов `UnityFramework` по их смещению (`ASLR Base + RVA`), благодаря чему сам движок игры пересчитывает контрольную сумму сохранения (`CashStore.Checksum` с солью `ones.economy.v1`) и атомарно записывает `ones.cash.json`.

---

## Функции меню (Вкладка `Hacks`)

### 1. Геймплей и таймеры (Live Toggles)
- **Заморозить ShotClock (14 сек)** — блокирует истечение времени на атаку и отключает потерю мяча по сирене (`ShotClock`).
- **Бесконечное время Overtime (60 сек)** — фиксирует таймер режима Overtime на 60 секундах и обнуляет штрафы за потери (`OvertimeClock`).
- **Бесконечные жизни (No Stops)** — обнуляет счётчик потерь `Stops` и выставляет лимиты поражения `stopsToWin` / `allDayStops` на `999` (`GameManager`).
- **Множитель стиля x10 + Сейв банка** — поднимает потолок множителя стиля до `x10`, отключает сгорание банка при промахе и усиливает бонусы за чистый бросок (`StyleScore`).
- **Вечный огонь (Always On Fire)** — держит шкалу разогрева на максимуме (`100.0f`, `Tier 3`) и запрещает её сброс при промахе, блок-шоте или перехвате (`Heat`).
- **Авто-идеальный тайминг броска** — автоматически регистрирует идеальный релиз в верхней точке прыжка (`StyleScore.NotePerfectRelease`).
- **Каждый бросок = 3 очка** — засчитывает лейапы и средние броски как трёхочковые (`GameManager` + `StyleScore`).
- **Отключить перехваты у защитника** — выключает ИИ-перехваты, контактный отбор, тычок со спины и чтение бросков у защитника (`DefenderSteal` + `DefenderReactions`).
- **Победа за 1 мяч (15pt Mode)** — снижает `pointsToWin` до `1` (`GameManager`).

### 2. Экономика, гардероб и пропуск (Instant Actions)
- **+100,000 Cash (Safe Checksum)** — легальное начисление 100k валюты через `CashStore.Add`.
- **+1,000,000 Cash (Safe Checksum)** — легальное начисление 1M валюты через `CashStore.Add`.
- **Открыть весь гардероб (`ShopCatalogue`)** — загружает реестр `ShopCatalogue.All` и выдаёт каждый предмет в сохранение через `CashStore.Grant`.
- **Открыть Battle Pass + 500 побед** — активирует премиум-пропуск текущего сезона (`CashStore.PassSetOwned`) и начисляет 500 побед (`CashStore.PassAddWins`) без флага `PassTampered`.
- **Сбросить таймер Lucky Drop** — обнуляет кулдаун рулетки через `CashStore.SetLuckyDropStampDev`.
- **Засчитать попадание (Instant Make)** — мгновенно вызывает `GameManager.OnMake()`.
- **Пропустить туториал** — закрывает обучение через `CashStore.SetTutorialDone(true, true)`.

---

## Вкладка `Creator`
Содержит карточку автора **@xantapers**, описание проекта, кнопку прямого открытия Telegram-канала (`tg://resolve?domain=xantapers` / `https://t.me/xantapers`) и кнопку копирования ссылки в буфер обмена.

---

## Сборка на Windows

```powershell
# Сборка TrinityOnesMod.dylib через clang++ и iOS SDK
python win_build_dylib.py --sdk "C:\theos\sdks\iPhoneOS16.5.sdk" --clang "clang++" --out "TrinityOnesMod.dylib"

# Опционально: сборка + копирование dylib внутрь Payload/*.app/Frameworks/ вашего IPA
python win_build_dylib.py --sdk "C:\theos\sdks\iPhoneOS16.5.sdk" --ipa "game.ipa" --out-ipa "game_mod.ipa"
```

## Инструмент анализа дампа (`dump_inspector.py`)
```powershell
python dump_inspector.py --dump "dump.cs" --summary
python dump_inspector.py --type "CashStore"
python dump_inspector.py --method "0x1AFA730"
```
