#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <mach-o/dyld.h>
#import <mach-o/loader.h>
#import <stdint.h>
#import <stdbool.h>
#import <math.h>

// ============================================================================
// RVA И ОФФСЕТЫ ИЗ DUMP.CS (Image 0: Assembly-CSharp.dll)
// ============================================================================
namespace Offsets {
    // CashStore (TypeDefIndex: 108)
    constexpr uintptr_t CashStore_get_Cash             = 0x1AED478;
    constexpr uintptr_t CashStore_Add                  = 0x1AFA730;
    constexpr uintptr_t CashStore_Save                 = 0x1AF2E18;
    constexpr uintptr_t CashStore_SetTutorialDone      = 0x1B13F7C;
    constexpr uintptr_t CashStore_SetLuckyDropStampDev = 0x1B03170;
    constexpr uintptr_t CashStore_get_PassSeasonId     = 0x1B0C264;
    constexpr uintptr_t CashStore_PassSetOwned         = 0x1B0D078;
    constexpr uintptr_t CashStore_PassAddWins          = 0x1B0D3B8;
    constexpr uintptr_t CashStore_Grant                = 0x1B1662C;

    // ShopCatalogue (TypeDefIndex: 594) & ShopItem (TypeDefIndex: 597)
    constexpr uintptr_t ShopCatalogue_EnsureLoaded     = 0x1B25DA8;
    constexpr uintptr_t ShopCatalogue_get_All          = 0x1B277CC;
    constexpr uintptr_t ShopItem_Field_id              = 0x18;  // Il2CppString*

    // GameManager (TypeDefIndex: 287)
    constexpr uintptr_t GameManager_get_Instance       = 0x18EFFFC;
    constexpr uintptr_t GameManager_OnMake             = 0x18F3A38;
    constexpr uintptr_t GM_Field_pointsToWin           = 0x20;  // int32_t
    constexpr uintptr_t GM_Field_stopsToWin            = 0x24;  // int32_t
    constexpr uintptr_t GM_Field_allDayStops           = 0x28;  // int32_t
    constexpr uintptr_t GM_Field_lastTakeoffBehindArc  = 0x90;  // bool
    constexpr uintptr_t GM_Field_Points                = 0xCC;  // int32_t
    constexpr uintptr_t GM_Field_Stops                 = 0xD0;  // int32_t
    constexpr uintptr_t GM_Field_ball                  = 0x240; // BallShoot*

    // BallShoot (TypeDefIndex: 71)
    constexpr uintptr_t BS_Field_nearMissError01              = 0x7C;  // float
    constexpr uintptr_t BS_Field_nearMissMakeChance           = 0x80;  // float
    constexpr uintptr_t BS_Field_contestedWindowScale         = 0x84;  // float
    constexpr uintptr_t BS_Field_contestedMaxDistance         = 0x88;  // float
    constexpr uintptr_t BS_Field_deepWindowMin                = 0x98;  // float
    constexpr uintptr_t BS_Field_finishingOpennessShift       = 0xF0;  // float
    constexpr uintptr_t BS_Field_dunkEnabled                  = 0x59C; // bool
    constexpr uintptr_t BS_Field_dunkStartDistance            = 0x5A0; // float
    constexpr uintptr_t BS_Field_dunkGateMax                  = 0x5A8; // float
    constexpr uintptr_t BS_Field_dunkJumpCap                  = 0x5AC; // float
    constexpr uintptr_t BS_Field_contestEnabled               = 0xAF0; // bool
    constexpr uintptr_t BS_Field_contestMaxPenalty            = 0xAF4; // float
    constexpr uintptr_t BS_Field_releaseBand01_x              = 0xB44; // float
    constexpr uintptr_t BS_Field_releaseBand01_y              = 0xB48; // float
    constexpr uintptr_t BS_Field_contestWindowShrink          = 0xB98; // float
    constexpr uintptr_t BS_Field_perfectReleaseError01        = 0xB9C; // float
    constexpr uintptr_t BS_Field_perfectMakeChanceUncontested = 0xBA0; // float
    constexpr uintptr_t BS_Field_perfectMakeChanceContested   = 0xBA4; // float
    constexpr uintptr_t BS_Field_threePointImperfectPenalty   = 0xBAC; // float

    // ShotClock (TypeDefIndex: 610)
    constexpr uintptr_t ShotClock_get_Instance         = 0x1B37678;
    constexpr uintptr_t SC_Field_enforceTurnover       = 0x28;  // bool
    constexpr uintptr_t SC_Field_Remaining             = 0x60;  // float
    constexpr uintptr_t SC_Field_Suspended             = 0x84;  // bool

    // OvertimeClock (TypeDefIndex: 482)
    constexpr uintptr_t OvertimeClock_get_Instance     = 0x1A031F8;
    constexpr uintptr_t OT_Field_stopEndsRun           = 0x2C;  // bool
    constexpr uintptr_t OT_Field_stopPenaltySeconds    = 0x30;  // float
    constexpr uintptr_t OT_Field_Remaining             = 0x54;  // float

    // Heat (TypeDefIndex: 333)
    constexpr uintptr_t Heat_get_Instance              = 0x1933A48;
    constexpr uintptr_t Heat_Field_missResets          = 0x58;  // bool
    constexpr uintptr_t Heat_Field_stealResets         = 0x59;  // bool
    constexpr uintptr_t Heat_Field_blockResets         = 0x5A;  // bool
    constexpr uintptr_t Heat_Field_Value               = 0xB0;  // float
    constexpr uintptr_t Heat_Field_Draining            = 0xB4;  // bool
    constexpr uintptr_t Heat_Field_tier                = 0xC8;  // int32_t

    // StyleScore (TypeDefIndex: 647)
    constexpr uintptr_t StyleScore_get_Instance        = 0x1B50C3C;
    constexpr uintptr_t StyleScore_NotePerfect         = 0x1B53F8C;
    constexpr uintptr_t SS_Field_layupPoints           = 0x74;  // int32_t
    constexpr uintptr_t SS_Field_jumperPoints          = 0x78;  // int32_t
    constexpr uintptr_t SS_Field_threePoints           = 0x7C;  // int32_t
    constexpr uintptr_t SS_Field_swishAdd              = 0x88;  // float
    constexpr uintptr_t SS_Field_perfectReleaseAdd     = 0x90;  // float
    constexpr uintptr_t SS_Field_edgeMultiplierCap     = 0x94;  // float
    constexpr uintptr_t SS_Field_missLosesPot          = 0xCC;  // bool
    constexpr uintptr_t SS_Field_ball                  = 0x1B8; // BallShoot*
    constexpr uintptr_t SS_Field_steal                 = 0x1C0; // DefenderSteal*
    constexpr uintptr_t SS_Field_react                 = 0x1C8; // DefenderReactions*

    // DefenderSteal (TypeDefIndex: 240)
    constexpr uintptr_t DS_Field_stealEnabled          = 0x20;  // bool
    constexpr uintptr_t DS_Field_stealRange            = 0x24;  // float
    constexpr uintptr_t DS_Field_touchStealEnabled     = 0x48;  // bool
    constexpr uintptr_t DS_Field_pokeFromBehindOn      = 0xFC;  // bool

    // DefenderReactions (TypeDefIndex: 233)
    constexpr uintptr_t DR_Field_readRulesOn           = 0x20;  // bool
    constexpr uintptr_t DR_Field_phasesOn              = 0xBC;  // bool
    constexpr uintptr_t DR_Field_smartOn               = 0x118; // bool
    constexpr uintptr_t DR_Field_shotReadOn            = 0x134; // bool

    // BackboardLights (TypeDefIndex: 27)
    constexpr uintptr_t BackboardLights_get_Active     = 0x18E9394;
    constexpr uintptr_t BackboardLights_PlayMake       = 0x18EACD4;
    constexpr uintptr_t BL_Field_makeColor_r           = 0x4C;  // float
    constexpr uintptr_t BL_Field_makeColor_g           = 0x50;  // float
    constexpr uintptr_t BL_Field_makeColor_b           = 0x54;  // float
    constexpr uintptr_t BL_Field_makeColor_a           = 0x58;  // float
    constexpr uintptr_t BL_Field_brightness            = 0x5C;  // float
}

// ============================================================================
// СОСТОЯНИЕ МОДИФИКАЦИИ И КОСМИЧЕСКИХ ЭФФЕКТОВ
// ============================================================================
struct ModConfig {
    // Геймплей
    bool autoGreenRelease  = false;
    bool noContestPenalty  = false;
    bool longRangeDunk     = false;
    bool freezeShotClock   = false;
    bool freezeOvertime    = false;
    bool infiniteStops     = false;
    bool maxStyleMult      = false;
    bool alwaysOnFire      = false;
    bool alwaysThreePoint  = false;
    bool disableDefender   = false;
    bool instantWin15Pt    = false;
    bool rainbowBackboard  = false; // RGB-неон подсветки баскетбольного щита

    // Визуальные эффекты меню (Settings)
    bool fxStarfield       = true;  // Анимированные космические звёзды на фоне
    bool fxNeonPulse       = true;  // Неоновое переливающееся свечение рамки
    bool fxHaptics         = true;  // Тактильный отклик при нажатиях
    int  themePreset       = 0;     // 0: Nebula Violet, 1: Cyber Supernova, 2: Crimson Pulsar
    float menuOpacity      = 0.94f; // Непрозрачность меню (0.45 .. 1.0)
    int  lang              = 0;     // 0: RU, 1: EN, 2: AR
};

static ModConfig g_Config;
static uintptr_t g_UnityBase = 0;
static float g_HuePhase = 0.0f;

struct Il2CppArrayHeader {
    void *klass;
    void *monitor;
    void *bounds;
    uintptr_t max_length;
    uintptr_t vector[1];
};

static uintptr_t ResolveUnityBase() {
    if (g_UnityBase != 0) return g_UnityBase;
    uint32_t count = _dyld_image_count();
    for (uint32_t i = 0; i < count; ++i) {
        const char *name = _dyld_get_image_name(i);
        if (!name) continue;
        if (strstr(name, "UnityFramework.framework/UnityFramework") != nullptr) {
            g_UnityBase = reinterpret_cast<uintptr_t>(_dyld_get_image_header(i));
            return g_UnityBase;
        }
    }
    g_UnityBase = reinterpret_cast<uintptr_t>(_dyld_get_image_header(0));
    return g_UnityBase;
}

template <typename Fn>
static Fn GetMethod(uintptr_t rva) {
    uintptr_t base = ResolveUnityBase();
    if (!base) return nullptr;
    return reinterpret_cast<Fn>(base + rva);
}

template <typename T>
static T ReadField(uintptr_t instance, uintptr_t offset) {
    return *reinterpret_cast<T *>(instance + offset);
}

template <typename T>
static void WriteField(uintptr_t instance, uintptr_t offset, T value) {
    *reinterpret_cast<T *>(instance + offset) = value;
}

// Сигнатуры IL2CPP-методов
using Fn_CashStore_Add              = void (*)(int64_t amount, const void *method);
using Fn_CashStore_get_Cash         = int64_t (*)(const void *method);
using Fn_CashStore_SetTutorial      = void (*)(bool completed, bool skipped, const void *method);
using Fn_CashStore_SetLuckyDrop     = void (*)(int64_t dropUnix, int64_t readyUnix, uintptr_t whyStr, const void *method);
using Fn_CashStore_get_PassSeason   = uintptr_t (*)(const void *method);
using Fn_CashStore_PassSetOwned     = bool (*)(uintptr_t seasonStr, bool owned, uintptr_t whyStr, const void *method);
using Fn_CashStore_PassAddWins      = void (*)(uintptr_t seasonStr, int32_t n, uintptr_t whyStr, const void *method);
using Fn_CashStore_Grant            = bool (*)(uintptr_t itemIdStr, uintptr_t whyStr, const void *method);

using Fn_ShopCatalogue_Ensure       = void (*)(const void *method);
using Fn_ShopCatalogue_get_All      = Il2CppArrayHeader *(*)(const void *method);

using Fn_GameManager_get_Instance   = uintptr_t (*)(const void *method);
using Fn_GameManager_OnMake         = void (*)(const void *method);
using Fn_ShotClock_get_Instance     = uintptr_t (*)(const void *method);
using Fn_OvertimeClock_get_Instance = uintptr_t (*)(const void *method);
using Fn_Heat_get_Instance          = uintptr_t (*)(const void *method);
using Fn_StyleScore_get_Instance    = uintptr_t (*)(const void *method);
using Fn_StyleScore_NotePerfect     = void (*)(const void *method);
using Fn_Backboard_get_Active       = uintptr_t (*)(const void *method);
using Fn_Backboard_PlayMake         = void (*)(uintptr_t instance, const void *method);

// ============================================================================
// ЛОКАЛИЗАЦИЯ: РУССКИЙ (0) | ENGLISH (1) | العربية (2)
// ============================================================================
enum LKey : int {
    LK_HEADER_SUB = 0,
    LK_TAB_HACKS,
    LK_TAB_SETTINGS,
    LK_TAB_CREATOR,
    LK_SEC_SHOOTING,
    LK_SEC_TIMERS,
    LK_SEC_ECONOMY,
    LK_T_AUTOGREEN,
    LK_T_NOCONTEST,
    LK_T_LONGDUNK,
    LK_T_ALWAYS3PT,
    LK_T_ONFIRE,
    LK_T_MAXSTYLE,
    LK_T_SHOTCLOCK,
    LK_T_OVERTIME,
    LK_T_NOSTOPS,
    LK_T_NODEFENDER,
    LK_T_INSTANTWIN,
    LK_T_RGBBOARD,
    LK_B_CASH100K,
    LK_B_CASH1M,
    LK_B_UNLOCKALL,
    LK_B_BATTLEPASS,
    LK_B_LUCKYDROP,
    LK_B_INSTANTMAKE,
    LK_B_SKIPTUT,
    LK_B_BOARDPULSE,
    LK_SET_LANG_HDR,
    LK_SET_OPACITY_HDR,
    LK_SET_THEME_HDR,
    LK_SET_FX_HDR,
    LK_FX_STARFIELD,
    LK_FX_NEONPULSE,
    LK_FX_HAPTICS,
    LK_THEME_NEBULA,
    LK_THEME_CYBER,
    LK_THEME_PULSAR,
    LK_CR_ROLE,
    LK_CR_BIO,
    LK_CR_OPEN_TG,
    LK_CR_COPY_TG,
    LK_NOTE_100K,
    LK_NOTE_1M,
    LK_NOTE_ITEMS,
    LK_NOTE_PASS,
    LK_NOTE_DROP,
    LK_NOTE_MAKE,
    LK_NOTE_TUT,
    LK_NOTE_COPIED,
    LK_COUNT
};

static NSString *const kLocTable[LK_COUNT][3] = {
    // LK_HEADER_SUB
    {@"КОСМИЧЕСКАЯ ПАНЕЛЬ", @"COSMIC EDITION", @"الإصدار الفضائي"},
    // LK_TAB_HACKS
    {@"Функции", @"Hacks", @"الغش"},
    // LK_TAB_SETTINGS
    {@"Настройки", @"Settings", @"الإعدادات"},
    // LK_TAB_CREATOR
    {@"Автор", @"Creator", @"المطور"},
    // LK_SEC_SHOOTING
    {@"✦ БРОСКИ, ДАНКИ И СТИЛЬ", @"✦ SHOOTING, DUNKS & STYLE", @"✦ التسديد والدانك والأسلوب"},
    // LK_SEC_TIMERS
    {@"✦ ТАЙМЕРЫ, ЗАЩИТА И РЕЖИМЫ", @"✦ TIMERS, DEFENSE & MODES", @"✦ المؤقت والدفاع والأطوار"},
    // LK_SEC_ECONOMY
    {@"✦ ЭКОНОМИКА, ГАРДЕРОБ И ПРОПУСК", @"✦ ECONOMY, WARDROBE & PASS", @"✦ الاقتصاد والملابس والسيزون"},
    // LK_T_AUTOGREEN
    {@"Авто-идеальный бросок (Auto Green)", @"Auto Green Release (100% Make)", @"رمية خضراء تلقائية (100%)"},
    // LK_T_NOCONTEST
    {@"Игнорировать защиту (No Contest)", @"Ignore Defender Contest", @"تجاهل دفاع الخصم"},
    // LK_T_LONGDUNK
    {@"Дальние данки (Long Range Dunk)", @"Long Range Dunks (15m)", @"دانك من مسافة بعيدة"},
    // LK_T_ALWAYS3PT
    {@"Каждый бросок = 3 очка", @"Every Shot Counts as 3-Pointer", @"كل رمية تحسب 3 نقاط"},
    // LK_T_ONFIRE
    {@"Вечный огонь (Always On Fire)", @"Always On Fire (Max Heat Tier 3)", @"شعلة دائمة (أقصى حماس)"},
    // LK_T_MAXSTYLE
    {@"Множитель стиля x10 + Сейв банка", @"Style Multiplier x10 + Save Pot", @"مضاعف الأسلوب x10 وحفظ الرصيد"},
    // LK_T_SHOTCLOCK
    {@"Заморозить ShotClock (14 сек)", @"Freeze ShotClock (14s)", @"تجميد وقت الهجمة (14 ثانية)"},
    // LK_T_OVERTIME
    {@"Бесконечное время Overtime (60 сек)", @"Freeze Overtime Clock (60s)", @"تجميد وقت الإضافي (60 ثانية)"},
    // LK_T_NOSTOPS
    {@"Бесконечные жизни (No Stops)", @"Infinite Lives (Zero Stops)", @"حياة غير محدودة (بدون خسارة)"},
    // LK_T_NODEFENDER
    {@"Отключить перехваты у защитника", @"Disable Defender Steals & Reads", @"تعطيل سرقة الكرة من المدافع"},
    // LK_T_INSTANTWIN
    {@"Победа за 1 мяч (15pt Mode)", @"Instant 1-Bucket Win (15pt Mode)", @"الفوز من أول سلة (طور 15)"},
    // LK_T_RGBBOARD
    {@"Космическая RGB-подсветка щита", @"Cosmic RGB Backboard LED", @"إضاءة اللوحة الخلفية RGB"},
    // LK_B_CASH100K
    {@"+100,000 Cash", @"+100,000 Cash", @"+100,000 كاش"},
    // LK_B_CASH1M
    {@"+1,000,000 Cash", @"+1,000,000 Cash", @"+1,000,000 كاش"},
    // LK_B_UNLOCKALL
    {@"Открыть весь гардероб", @"Unlock Full Wardrobe", @"فتح جميع الملابس"},
    // LK_B_BATTLEPASS
    {@"Battle Pass + 500 побед", @"Unlock Pass + 500 Wins", @"فتح الباس + 500 فوز"},
    // LK_B_LUCKYDROP
    {@"Сброс таймера Lucky Drop", @"Reset Lucky Drop Timer", @"تصفير مؤقت عجلة الحظ"},
    // LK_B_INSTANTMAKE
    {@"Засчитать попадание", @"Instant Score Bucket", @"تسجيل نقطة فورية"},
    // LK_B_SKIPTUT
    {@"Пропустить туториал", @"Complete & Skip Tutorial", @"تخطي التدريب"},
    // LK_B_BOARDPULSE
    {@"Импульс подсветки щита", @"Trigger Backboard Pulse", @"تشغيل وميض اللوحة"},
    // LK_SET_LANG_HDR
    {@"✦ ЯЗЫК ИНТЕРФЕЙСА / LANGUAGE / اللغة", @"✦ INTERFACE LANGUAGE", @"✦ لغة القائمة"},
    // LK_SET_OPACITY_HDR
    {@"✦ НЕПРОЗРАЧНОСТЬ МЕНЮ", @"✦ MENU OPACITY", @"✦ شفافية القائمة"},
    // LK_SET_THEME_HDR
    {@"✦ КОСМИЧЕСКАЯ ТЕМА ОФОРМЛЕНИЯ", @"✦ COSMIC COLOR THEME", @"✦ الثيم الفضائي"},
    // LK_SET_FX_HDR
    {@"✦ ВИЗУАЛЬНЫЕ И ТАКТИЛЬНЫЕ ЭФФЕКТЫ", @"✦ VISUAL & HAPTIC EFFECTS", @"✦ المؤثرات البصرية والاهتزاز"},
    // LK_FX_STARFIELD
    {@"Анимированная звёздная пыль (Starfield)", @"Animated Cosmic Starfield", @"نجوم فضائية متحركة في الخلفية"},
    // LK_FX_NEONPULSE
    {@"Неоновое дыхание рамки (Neon Pulse)", @"Neon Border Pulse Glow", @"توهج النيون المتردد للإطار"},
    // LK_FX_HAPTICS
    {@"Тактильный отклик (Haptic Feedback)", @"Tactile Haptic Feedback", @"اهتزاز التفاعل عند اللمس"},
    // LK_THEME_NEBULA
    {@"Nebula", @"Nebula", @"سديم"},
    // LK_THEME_CYBER
    {@"Supernova", @"Supernova", @"سوبرنوفا"},
    // LK_THEME_PULSAR
    {@"Pulsar", @"Pulsar", @"نجم نابض"},
    // LK_CR_ROLE
    {@"iOS Modding • Reverse Engineering • No-JB / Sideload", @"iOS Modding • Reverse Engineering • No-JB / Sideload", @"تعديل ألعاب iOS • هندسة عكسية • بدون جلبريك"},
    // LK_CR_BIO
    {@"Автор модификации и реверс-инжиниринга игры.\n\nВ Telegram-канале выходят свежие обновления мода, эксклюзивные dylib-сборки, разборы дампов Il2Cpp и готовые IPA под Sideload без джейлбрейка.",
     @"Creator of this modification and game reverse engineering.\n\nJoin our Telegram channel for the latest mod updates, exclusive dylib builds, Il2Cpp dump analysis, and ready-to-sideload IPA releases without Jailbreak.",
     @"مطور هذا التعديل والهندسة العكسية للعبة.\n\nتابع قناتنا على تيليجرام للحصول على أحدث التحديثات، ملفات dylib الحصرية، وتحليلات Il2Cpp وملفات IPA الجاهزة للتثبيت بدون جلبريك."},
    // LK_CR_OPEN_TG
    {@"🚀 Открыть Telegram: t.me/xantapers", @"🚀 Open Telegram: t.me/xantapers", @"🚀 فتح تيليجرام: t.me/xantapers"},
    // LK_CR_COPY_TG
    {@"📋 Скопировать ссылку @xantapers", @"📋 Copy @xantapers Link", @"📋 نسخ رابط @xantapers"},
    // LK_NOTE_100K
    {@"+100k Cash начислено", @"+100k Cash added", @"تمت إضافة 100 ألف كاش"},
    // LK_NOTE_1M
    {@"+1M Cash начислено", @"+1M Cash added", @"تمت إضافة مليون كاش"},
    // LK_NOTE_ITEMS
    {@"Гардероб открыт", @"Wardrobe unlocked", @"تم فتح جميع الملابس"},
    // LK_NOTE_PASS
    {@"Battle Pass активирован", @"Battle Pass unlocked", @"تم تفعيل الباتل باس"},
    // LK_NOTE_DROP
    {@"Lucky Drop сброшен", @"Lucky Drop reset", @"تم تصفير عجلة الحظ"},
    // LK_NOTE_MAKE
    {@"Мяч засчитан", @"Bucket scored", @"تم تسجيل السلة"},
    // LK_NOTE_TUT
    {@"Туториал закрыт", @"Tutorial skipped", @"تم تخطي التدريب"},
    // LK_NOTE_COPIED
    {@"Ссылка скопирована", @"Link copied", @"تم نسخ الرابط"}
};

static NSString *Tr(LKey key) {
    int l = g_Config.lang;
    if (l < 0 || l > 2) l = 0;
    return kLocTable[key][l];
}

// ============================================================================
// МГНОВЕННЫЕ ФУНКЦИИ (ACTIONS)
// ============================================================================
static int64_t ActionGetCash() {
    auto fn = GetMethod<Fn_CashStore_get_Cash>(Offsets::CashStore_get_Cash);
    return fn ? fn(nullptr) : 0;
}

static void ActionAddCash(int64_t amount) {
    auto fn = GetMethod<Fn_CashStore_Add>(Offsets::CashStore_Add);
    if (fn) fn(amount, nullptr);
}

static void ActionScoreBucket() {
    auto fn = GetMethod<Fn_GameManager_OnMake>(Offsets::GameManager_OnMake);
    if (fn) fn(nullptr);
}

static void ActionSkipTutorial() {
    auto fn = GetMethod<Fn_CashStore_SetTutorial>(Offsets::CashStore_SetTutorialDone);
    if (fn) fn(true, true, nullptr);
}

static void ActionResetLuckyDrop() {
    auto fnSeason = GetMethod<Fn_CashStore_get_PassSeason>(Offsets::CashStore_get_PassSeasonId);
    uintptr_t validIl2CppStr = fnSeason ? fnSeason(nullptr) : 0;
    auto fnDrop = GetMethod<Fn_CashStore_SetLuckyDrop>(Offsets::CashStore_SetLuckyDropStampDev);
    if (fnDrop) {
        fnDrop(0, 0, validIl2CppStr, nullptr);
    }
}

static void ActionUnlockBattlePass() {
    auto fnSeason = GetMethod<Fn_CashStore_get_PassSeason>(Offsets::CashStore_get_PassSeasonId);
    uintptr_t seasonStr = fnSeason ? fnSeason(nullptr) : 0;
    if (!seasonStr) return;

    auto fnOwned = GetMethod<Fn_CashStore_PassSetOwned>(Offsets::CashStore_PassSetOwned);
    if (fnOwned) fnOwned(seasonStr, true, seasonStr, nullptr);

    auto fnWins = GetMethod<Fn_CashStore_PassAddWins>(Offsets::CashStore_PassAddWins);
    if (fnWins) fnWins(seasonStr, 500, seasonStr, nullptr);
}

static int32_t ActionUnlockAllShopItems() {
    auto fnEnsure = GetMethod<Fn_ShopCatalogue_Ensure>(Offsets::ShopCatalogue_EnsureLoaded);
    if (fnEnsure) fnEnsure(nullptr);

    auto fnAll = GetMethod<Fn_ShopCatalogue_get_All>(Offsets::ShopCatalogue_get_All);
    auto fnGrant = GetMethod<Fn_CashStore_Grant>(Offsets::CashStore_Grant);
    if (!fnAll || !fnGrant) return 0;

    Il2CppArrayHeader *arr = fnAll(nullptr);
    if (!arr || arr->max_length == 0 || arr->max_length > 5000) return 0;

    int32_t grantedCount = 0;
    for (uintptr_t i = 0; i < arr->max_length; ++i) {
        uintptr_t shopItem = arr->vector[i];
        if (!shopItem) continue;
        uintptr_t itemIdStr = ReadField<uintptr_t>(shopItem, Offsets::ShopItem_Field_id);
        if (!itemIdStr) continue;
        if (fnGrant(itemIdStr, itemIdStr, nullptr)) {
            ++grantedCount;
        }
    }
    return grantedCount;
}

static void ActionPulseBackboard() {
    auto fnActive = GetMethod<Fn_Backboard_get_Active>(Offsets::BackboardLights_get_Active);
    uintptr_t bl = fnActive ? fnActive(nullptr) : 0;
    if (bl != 0) {
        auto fnPlay = GetMethod<Fn_Backboard_PlayMake>(Offsets::BackboardLights_PlayMake);
        if (fnPlay) fnPlay(bl, nullptr);
    }
}

// ============================================================================
// ЦИКЛ ОБНОВЛЕНИЯ (30 ГЦ, HEAP PATCHING — БЕЗ JIT / БЕЗ JB)
// ============================================================================
static void OnModTick() {
    if (!ResolveUnityBase()) return;

    g_HuePhase = fmodf(g_HuePhase + 0.012f, 1.0f);

    // 0. Космическая RGB-подсветка щита (BackboardLights)
    if (g_Config.rainbowBackboard) {
        auto fnActive = GetMethod<Fn_Backboard_get_Active>(Offsets::BackboardLights_get_Active);
        uintptr_t bl = fnActive ? fnActive(nullptr) : 0;
        if (bl != 0) {
            CGFloat r = 1.0, g = 1.0, b = 1.0, a = 1.0;
            [[UIColor colorWithHue:g_HuePhase saturation:0.95 brightness:1.0 alpha:1.0] getRed:&r green:&g blue:&b alpha:&a];
            WriteField<float>(bl, Offsets::BL_Field_makeColor_r, (float)r);
            WriteField<float>(bl, Offsets::BL_Field_makeColor_g, (float)g);
            WriteField<float>(bl, Offsets::BL_Field_makeColor_b, (float)b);
            WriteField<float>(bl, Offsets::BL_Field_makeColor_a, 1.0f);
            WriteField<float>(bl, Offsets::BL_Field_brightness, 12.0f);
        }
    }

    // 1. Заморозка ShotClock
    if (g_Config.freezeShotClock) {
        auto fnSC = GetMethod<Fn_ShotClock_get_Instance>(Offsets::ShotClock_get_Instance);
        uintptr_t sc = fnSC ? fnSC(nullptr) : 0;
        if (sc != 0) {
            WriteField<bool>(sc, Offsets::SC_Field_enforceTurnover, false);
            WriteField<float>(sc, Offsets::SC_Field_Remaining, 14.0f);
            WriteField<bool>(sc, Offsets::SC_Field_Suspended, true);
        }
    }

    // 2. Заморозка OvertimeClock
    if (g_Config.freezeOvertime) {
        auto fnOT = GetMethod<Fn_OvertimeClock_get_Instance>(Offsets::OvertimeClock_get_Instance);
        uintptr_t ot = fnOT ? fnOT(nullptr) : 0;
        if (ot != 0) {
            WriteField<bool>(ot, Offsets::OT_Field_stopEndsRun, false);
            WriteField<float>(ot, Offsets::OT_Field_stopPenaltySeconds, 0.0f);
            WriteField<float>(ot, Offsets::OT_Field_Remaining, 60.0f);
        }
    }

    // 3. GameManager
    auto fnGM = GetMethod<Fn_GameManager_get_Instance>(Offsets::GameManager_get_Instance);
    uintptr_t gm = fnGM ? fnGM(nullptr) : 0;
    uintptr_t ball = 0;
    if (gm != 0) {
        ball = ReadField<uintptr_t>(gm, Offsets::GM_Field_ball);
        if (g_Config.infiniteStops) {
            WriteField<int32_t>(gm, Offsets::GM_Field_Stops, 0);
            WriteField<int32_t>(gm, Offsets::GM_Field_stopsToWin, 999);
            WriteField<int32_t>(gm, Offsets::GM_Field_allDayStops, 999);
        }
        if (g_Config.instantWin15Pt) {
            WriteField<int32_t>(gm, Offsets::GM_Field_pointsToWin, 1);
        }
        if (g_Config.alwaysThreePoint) {
            WriteField<bool>(gm, Offsets::GM_Field_lastTakeoffBehindArc, true);
        }
    }

    // 4. Heat: Вечный огонь (Always On Fire)
    if (g_Config.alwaysOnFire) {
        auto fnHeat = GetMethod<Fn_Heat_get_Instance>(Offsets::Heat_get_Instance);
        uintptr_t heat = fnHeat ? fnHeat(nullptr) : 0;
        if (heat != 0) {
            WriteField<bool>(heat, Offsets::Heat_Field_missResets, false);
            WriteField<bool>(heat, Offsets::Heat_Field_stealResets, false);
            WriteField<bool>(heat, Offsets::Heat_Field_blockResets, false);
            WriteField<bool>(heat, Offsets::Heat_Field_Draining, false);
            WriteField<float>(heat, Offsets::Heat_Field_Value, 100.0f);
            WriteField<int32_t>(heat, Offsets::Heat_Field_tier, 3);
        }
    }

    // 5. StyleScore + Защитник
    auto fnSS = GetMethod<Fn_StyleScore_get_Instance>(Offsets::StyleScore_get_Instance);
    uintptr_t ss = fnSS ? fnSS(nullptr) : 0;
    if (ss != 0) {
        if (ball == 0) {
            ball = ReadField<uintptr_t>(ss, Offsets::SS_Field_ball);
        }
        if (g_Config.maxStyleMult) {
            WriteField<bool>(ss, Offsets::SS_Field_missLosesPot, false);
            WriteField<float>(ss, Offsets::SS_Field_edgeMultiplierCap, 10.0f);
            WriteField<float>(ss, Offsets::SS_Field_swishAdd, 3.0f);
            WriteField<float>(ss, Offsets::SS_Field_perfectReleaseAdd, 3.0f);
        }
        if (g_Config.alwaysThreePoint) {
            WriteField<int32_t>(ss, Offsets::SS_Field_layupPoints, 3);
            WriteField<int32_t>(ss, Offsets::SS_Field_jumperPoints, 3);
            WriteField<int32_t>(ss, Offsets::SS_Field_threePoints, 3);
        }
        if (g_Config.autoGreenRelease) {
            auto fnPerf = GetMethod<Fn_StyleScore_NotePerfect>(Offsets::StyleScore_NotePerfect);
            if (fnPerf) fnPerf(nullptr);
        }
        if (g_Config.disableDefender) {
            uintptr_t stealComp = ReadField<uintptr_t>(ss, Offsets::SS_Field_steal);
            if (stealComp != 0) {
                WriteField<bool>(stealComp, Offsets::DS_Field_stealEnabled, false);
                WriteField<bool>(stealComp, Offsets::DS_Field_touchStealEnabled, false);
                WriteField<bool>(stealComp, Offsets::DS_Field_pokeFromBehindOn, false);
                WriteField<float>(stealComp, Offsets::DS_Field_stealRange, 0.0f);
            }
            uintptr_t reactComp = ReadField<uintptr_t>(ss, Offsets::SS_Field_react);
            if (reactComp != 0) {
                WriteField<bool>(reactComp, Offsets::DR_Field_readRulesOn, false);
                WriteField<bool>(reactComp, Offsets::DR_Field_phasesOn, false);
                WriteField<bool>(reactComp, Offsets::DR_Field_smartOn, false);
                WriteField<bool>(reactComp, Offsets::DR_Field_shotReadOn, false);
            }
        }
    }

    // 6. BallShoot: Auto Green Release / No Contest / Long Range Dunk
    if (ball != 0) {
        if (g_Config.autoGreenRelease) {
            WriteField<float>(ball, Offsets::BS_Field_perfectMakeChanceUncontested, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_perfectMakeChanceContested, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_nearMissMakeChance, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_nearMissError01, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_perfectReleaseError01, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_threePointImperfectPenalty, 0.0f);
            WriteField<float>(ball, Offsets::BS_Field_deepWindowMin, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_releaseBand01_x, 0.01f);
            WriteField<float>(ball, Offsets::BS_Field_releaseBand01_y, 0.99f);
        }
        if (g_Config.noContestPenalty) {
            WriteField<bool>(ball, Offsets::BS_Field_contestEnabled, false);
            WriteField<float>(ball, Offsets::BS_Field_contestMaxPenalty, 0.0f);
            WriteField<float>(ball, Offsets::BS_Field_contestedMaxDistance, 0.0f);
            WriteField<float>(ball, Offsets::BS_Field_contestedWindowScale, 1.0f);
            WriteField<float>(ball, Offsets::BS_Field_contestWindowShrink, 0.0f);
            WriteField<float>(ball, Offsets::BS_Field_finishingOpennessShift, 0.25f);
        }
        if (g_Config.longRangeDunk) {
            WriteField<bool>(ball, Offsets::BS_Field_dunkEnabled, true);
            WriteField<float>(ball, Offsets::BS_Field_dunkStartDistance, 12.0f);
            WriteField<float>(ball, Offsets::BS_Field_dunkGateMax, 15.0f);
            WriteField<float>(ball, Offsets::BS_Field_dunkJumpCap, 4.5f);
        }
    }
}

// ============================================================================
// КОСМИЧЕСКИЙ UI-ОВЕРЛЕЙ (@xantapers) — 3 ВКЛАДКИ, 3 ЯЗЫКА, STARFIELD & NEON
// ============================================================================
@interface TrinityModOverlay : NSObject
@property (nonatomic, strong) UIButton *floatingBtn;
@property (nonatomic, strong) UIView *panelView;
@property (nonatomic, strong) CAGradientLayer *cosmicGradient;
@property (nonatomic, strong) UIView *starfieldContainer;
@property (nonatomic, strong) NSMutableArray<CALayer *> *starLayers;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *starSpeeds;
@property (nonatomic, strong) UILabel *headerSubtitle;
@property (nonatomic, strong) UILabel *statusLabel;
@property (nonatomic, strong) UISegmentedControl *tabControl;
@property (nonatomic, strong) UIScrollView *hacksScroll;
@property (nonatomic, strong) UIScrollView *settingsScroll;
@property (nonatomic, strong) UIView *creatorView;
@property (nonatomic, strong) NSMutableDictionary<NSNumber *, UILabel *> *locLabels;
@property (nonatomic, strong) NSMutableDictionary<NSNumber *, UIButton *> *locButtons;
@property (nonatomic, strong) NSMutableArray<UISwitch *> *allSwitches;
@property (nonatomic, strong) UISegmentedControl *themeSeg;
@property (nonatomic, strong) UILabel *opacityValueLbl;
@property (nonatomic, strong) NSTimer *tickTimer;
@property (nonatomic, assign) float neonPhase;
+ (instancetype)shared;
- (void)setupIfNeeded;
@end

@implementation TrinityModOverlay

+ (instancetype)shared {
    static TrinityModOverlay *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[TrinityModOverlay alloc] init];
        instance.locLabels = [NSMutableDictionary dictionary];
        instance.locButtons = [NSMutableDictionary dictionary];
        instance.allSwitches = [NSMutableArray array];
        instance.starLayers = [NSMutableArray array];
        instance.starSpeeds = [NSMutableArray array];
    });
    return instance;
}

- (UIWindow *)activeKeyWindow {
    for (UIScene *scene in [UIApplication sharedApplication].connectedScenes) {
        if (scene.activationState == UISceneActivationStateForegroundActive &&
            [scene isKindOfClass:[UIWindowScene class]]) {
            UIWindowScene *ws = (UIWindowScene *)scene;
            for (UIWindow *w in ws.windows) {
                if (w.isKeyWindow) return w;
            }
            if (ws.windows.count > 0) return ws.windows.firstObject;
        }
    }
    return nil;
}

- (UIColor *)primaryAccent {
    switch (g_Config.themePreset) {
        case 1:  return [UIColor colorWithRed:0.00 green:0.88 blue:1.00 alpha:1.0]; // Cyber Supernova (Cyan)
        case 2:  return [UIColor colorWithRed:1.00 green:0.22 blue:0.55 alpha:1.0]; // Crimson Pulsar (Magenta-Red)
        default: return [UIColor colorWithRed:0.62 green:0.35 blue:1.00 alpha:1.0]; // Nebula Violet
    }
}

- (UIColor *)secondaryAccent {
    switch (g_Config.themePreset) {
        case 1:  return [UIColor colorWithRed:0.45 green:0.25 blue:1.00 alpha:1.0];
        case 2:  return [UIColor colorWithRed:1.00 green:0.55 blue:0.15 alpha:1.0];
        default: return [UIColor colorWithRed:0.15 green:0.82 blue:1.00 alpha:1.0];
    }
}

- (NSArray *)gradientColorsForPreset {
    switch (g_Config.themePreset) {
        case 1: // Cyber Supernova
            return @[
                (id)[UIColor colorWithRed:0.02 green:0.05 blue:0.14 alpha:1.0].CGColor,
                (id)[UIColor colorWithRed:0.04 green:0.12 blue:0.24 alpha:1.0].CGColor,
                (id)[UIColor colorWithRed:0.02 green:0.04 blue:0.10 alpha:1.0].CGColor
            ];
        case 2: // Crimson Pulsar
            return @[
                (id)[UIColor colorWithRed:0.12 green:0.02 blue:0.09 alpha:1.0].CGColor,
                (id)[UIColor colorWithRed:0.20 green:0.04 blue:0.14 alpha:1.0].CGColor,
                (id)[UIColor colorWithRed:0.07 green:0.02 blue:0.08 alpha:1.0].CGColor
            ];
        default: // Nebula Violet
            return @[
                (id)[UIColor colorWithRed:0.05 green:0.03 blue:0.14 alpha:1.0].CGColor,
                (id)[UIColor colorWithRed:0.11 green:0.05 blue:0.24 alpha:1.0].CGColor,
                (id)[UIColor colorWithRed:0.03 green:0.03 blue:0.10 alpha:1.0].CGColor
            ];
    }
}

- (void)triggerHaptic {
    if (!g_Config.fxHaptics) return;
    UIImpactFeedbackGenerator *gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleLight];
    [gen impactOccurred];
}

- (void)setupIfNeeded {
    UIWindow *win = [self activeKeyWindow];
    if (!win) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setupIfNeeded];
        });
        return;
    }
    if (self.floatingBtn) return;

    UIColor *accent = [self primaryAccent];

    // 1. Космическая плавающая кнопка "✦ MOD"
    self.floatingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.floatingBtn.frame = CGRectMake(20, 120, 60, 60);
    self.floatingBtn.backgroundColor = [UIColor colorWithRed:0.06 green:0.04 blue:0.15 alpha:0.94];
    self.floatingBtn.layer.cornerRadius = 30;
    self.floatingBtn.layer.borderWidth = 2.0;
    self.floatingBtn.layer.borderColor = accent.CGColor;
    self.floatingBtn.layer.shadowColor = accent.CGColor;
    self.floatingBtn.layer.shadowRadius = 10.0;
    self.floatingBtn.layer.shadowOpacity = 0.85;
    self.floatingBtn.layer.shadowOffset = CGSizeZero;
    [self.floatingBtn setTitle:@"✦ MOD" forState:UIControlStateNormal];
    self.floatingBtn.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [self.floatingBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.floatingBtn addTarget:self action:@selector(toggleMenu) forControlEvents:UIControlEventTouchUpInside];

    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [self.floatingBtn addGestureRecognizer:pan];
    [win addSubview:self.floatingBtn];

    // 2. Широкая космическая панель меню (370 x 510)
    CGFloat screenW = win.bounds.size.width;
    CGFloat screenH = win.bounds.size.height;
    CGFloat panelW = MIN(374.0, screenW - 20.0);
    CGFloat panelH = MIN(520.0, screenH - 70.0);

    self.panelView = [[UIView alloc] initWithFrame:CGRectMake((screenW - panelW) / 2.0, (screenH - panelH) / 2.0, panelW, panelH)];
    self.panelView.backgroundColor = [UIColor colorWithRed:0.04 green:0.03 blue:0.10 alpha:1.0];
    self.panelView.alpha = g_Config.menuOpacity;
    self.panelView.layer.cornerRadius = 22;
    self.panelView.layer.borderWidth = 1.8;
    self.panelView.layer.borderColor = accent.CGColor;
    self.panelView.layer.shadowColor = accent.CGColor;
    self.panelView.layer.shadowRadius = 18.0;
    self.panelView.layer.shadowOpacity = 0.75;
    self.panelView.layer.shadowOffset = CGSizeZero;
    self.panelView.clipsToBounds = YES;
    self.panelView.hidden = YES;

    // Космический градиентный фон
    self.cosmicGradient = [CAGradientLayer layer];
    self.cosmicGradient.frame = self.panelView.bounds;
    self.cosmicGradient.colors = [self gradientColorsForPreset];
    self.cosmicGradient.startPoint = CGPointMake(0.0, 0.0);
    self.cosmicGradient.endPoint = CGPointMake(1.0, 1.0);
    [self.panelView.layer insertSublayer:self.cosmicGradient atIndex:0];

    // Слой анимированной звёздной пыли (Starfield)
    self.starfieldContainer = [[UIView alloc] initWithFrame:self.panelView.bounds];
    self.starfieldContainer.userInteractionEnabled = NO;
    [self.panelView addSubview:self.starfieldContainer];
    [self buildStarfieldWithSize:self.panelView.bounds.size];

    // 3. Шапка меню
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, panelW, 102)];
    headerView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.32];
    UIPanGestureRecognizer *headerPan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanelPan:)];
    [headerView addGestureRecognizer:headerPan];

    UILabel *titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(18, 10, panelW - 90, 20)];
    titleLbl.text = @"✦ ONES COSMIC // @xantapers";
    titleLbl.textColor = [UIColor whiteColor];
    titleLbl.font = [UIFont boldSystemFontOfSize:16];
    [headerView addSubview:titleLbl];

    self.headerSubtitle = [[UILabel alloc] initWithFrame:CGRectMake(18, 30, 140, 15)];
    self.headerSubtitle.text = Tr(LK_HEADER_SUB);
    self.headerSubtitle.textColor = [self secondaryAccent];
    self.headerSubtitle.font = [UIFont boldSystemFontOfSize:10];
    [headerView addSubview:self.headerSubtitle];

    self.statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 30, panelW - 196, 15)];
    self.statusLabel.text = @"Cash: ---";
    self.statusLabel.textColor = [UIColor colorWithWhite:0.85 alpha:1.0];
    self.statusLabel.font = [UIFont systemFontOfSize:11 weight:UIFontWeightMedium];
    self.statusLabel.textAlignment = NSTextAlignmentRight;
    [headerView addSubview:self.statusLabel];

    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    closeBtn.frame = CGRectMake(panelW - 42, 12, 28, 28);
    closeBtn.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.10];
    closeBtn.layer.cornerRadius = 14;
    closeBtn.layer.borderWidth = 1.0;
    closeBtn.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.22].CGColor;
    [closeBtn setTitle:@"✕" forState:UIControlStateNormal];
    [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    closeBtn.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [closeBtn addTarget:self action:@selector(toggleMenu) forControlEvents:UIControlEventTouchUpInside];
    [headerView addSubview:closeBtn];

    // Переключатель 3 вкладок: Функции | Настройки | Автор
    self.tabControl = [[UISegmentedControl alloc] initWithItems:@[Tr(LK_TAB_HACKS), Tr(LK_TAB_SETTINGS), Tr(LK_TAB_CREATOR)]];
    self.tabControl.frame = CGRectMake(16, 56, panelW - 32, 34);
    self.tabControl.selectedSegmentIndex = 0;
    self.tabControl.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.07];
    self.tabControl.selectedSegmentTintColor = accent;
    NSDictionary *normalAttrs = @{NSForegroundColorAttributeName: [UIColor colorWithWhite:0.82 alpha:1.0], NSFontAttributeName: [UIFont boldSystemFontOfSize:13]};
    NSDictionary *selectedAttrs = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:13]};
    [self.tabControl setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [self.tabControl setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [self.tabControl addTarget:self action:@selector(onTabChanged:) forControlEvents:UIControlEventValueChanged];
    [headerView addSubview:self.tabControl];

    [self.panelView addSubview:headerView];

    // 4. Контентные контейнеры для 3 вкладок
    CGRect contentFrame = CGRectMake(0, 102, panelW, panelH - 102);

    self.hacksScroll = [[UIScrollView alloc] initWithFrame:contentFrame];
    self.hacksScroll.showsVerticalScrollIndicator = YES;
    self.hacksScroll.alwaysBounceVertical = YES;
    [self buildHacksTabWithWidth:panelW];
    [self.panelView addSubview:self.hacksScroll];

    self.settingsScroll = [[UIScrollView alloc] initWithFrame:contentFrame];
    self.settingsScroll.showsVerticalScrollIndicator = YES;
    self.settingsScroll.alwaysBounceVertical = YES;
    self.settingsScroll.hidden = YES;
    [self buildSettingsTabWithWidth:panelW];
    [self.panelView addSubview:self.settingsScroll];

    self.creatorView = [[UIView alloc] initWithFrame:contentFrame];
    self.creatorView.hidden = YES;
    [self buildCreatorTabWithWidth:panelW];
    [self.panelView addSubview:self.creatorView];

    [win addSubview:self.panelView];

    self.tickTimer = [NSTimer scheduledTimerWithTimeInterval:(1.0 / 30.0)
                                                      target:self
                                                    selector:@selector(onTimerTick)
                                                    userInfo:nil
                                                     repeats:YES];
}

// ============================================================================
// ПОСТРОЕНИЕ STARFIELD (ЗВЁЗДНОЙ ПЫЛИ)
// ============================================================================
- (void)buildStarfieldWithSize:(CGSize)size {
    for (int i = 0; i < 36; ++i) {
        CALayer *star = [CALayer layer];
        CGFloat d = (i % 3 == 0) ? 3.0 : ((i % 2 == 0) ? 2.0 : 1.4);
        CGFloat x = (CGFloat)(arc4random_uniform((uint32_t)MAX(size.width, 320)));
        CGFloat y = (CGFloat)(arc4random_uniform((uint32_t)MAX(size.height, 480)));
        star.frame = CGRectMake(x, y, d, d);
        star.cornerRadius = d / 2.0;
        CGFloat alpha = 0.25 + ((arc4random_uniform(65)) / 100.0);
        if (i % 5 == 0) {
            star.backgroundColor = [UIColor colorWithRed:0.55 green:0.85 blue:1.0 alpha:alpha].CGColor;
        } else if (i % 7 == 0) {
            star.backgroundColor = [UIColor colorWithRed:0.85 green:0.55 blue:1.0 alpha:alpha].CGColor;
        } else {
            star.backgroundColor = [UIColor colorWithWhite:1.0 alpha:alpha].CGColor;
        }
        [self.starfieldContainer.layer addSublayer:star];
        [self.starLayers addObject:star];
        float spd = 0.22f + ((arc4random_uniform(55)) / 100.0f);
        [self.starSpeeds addObject:@(spd)];
    }
}

// ============================================================================
// ВКЛАДКА 1: HACKS (АККУРАТНЫЕ КАРТОЧКИ + ДВУХКОЛОНОЧНАЯ СЕТКА КНОПОК)
// ============================================================================
- (void)buildHacksTabWithWidth:(CGFloat)panelW {
    CGFloat y = 12.0;

    // Секция 1: Броски, данки и стиль
    [self addSectionHeaderKey:LK_SEC_SHOOTING toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_AUTOGREEN  tag:1  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_NOCONTEST  tag:2  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_LONGDUNK   tag:3  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_ALWAYS3PT  tag:9  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_ONFIRE     tag:8  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_MAXSTYLE   tag:7  toView:self.hacksScroll y:&y width:panelW];

    y += 6.0;
    // Секция 2: Таймеры, защита и режимы
    [self addSectionHeaderKey:LK_SEC_TIMERS toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_SHOTCLOCK  tag:4  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_OVERTIME   tag:5  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_NOSTOPS    tag:6  toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_NODEFENDER tag:10 toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_INSTANTWIN tag:11 toView:self.hacksScroll y:&y width:panelW];
    [self addToggleKey:LK_T_RGBBOARD   tag:12 toView:self.hacksScroll y:&y width:panelW];

    y += 8.0;
    // Секция 3: Экономика, гардероб и пропуск (аккуратная сетка 2 колонки)
    [self addSectionHeaderKey:LK_SEC_ECONOMY toView:self.hacksScroll y:&y width:panelW];
    [self addGridButtonPairLeftKey:LK_B_CASH100K leftSel:@selector(onAddCash100k)
                          rightKey:LK_B_CASH1M   rightSel:@selector(onAddCash1m)
                                 y:&y width:panelW];
    [self addGridButtonPairLeftKey:LK_B_UNLOCKALL  leftSel:@selector(onUnlockAllItems)
                          rightKey:LK_B_BATTLEPASS rightSel:@selector(onUnlockPass)
                                 y:&y width:panelW];
    [self addGridButtonPairLeftKey:LK_B_LUCKYDROP   leftSel:@selector(onResetLuckyDrop)
                          rightKey:LK_B_INSTANTMAKE rightSel:@selector(onInstantMake)
                                 y:&y width:panelW];
    [self addGridButtonPairLeftKey:LK_B_SKIPTUT    leftSel:@selector(onSkipTutorial)
                          rightKey:LK_B_BOARDPULSE rightSel:@selector(onPulseBoard)
                                 y:&y width:panelW];

    self.hacksScroll.contentSize = CGSizeMake(panelW, y + 18.0);
}

// ============================================================================
// ВКЛАДКА 2: SETTINGS (ЯЗЫК RU/EN/AR, НЕПРОЗРАЧНОСТЬ, КОСМИЧЕСКИЕ ЭФФЕКТЫ)
// ============================================================================
- (void)buildSettingsTabWithWidth:(CGFloat)panelW {
    CGFloat y = 14.0;
    UIColor *accent = [self primaryAccent];

    // 1. Выбор языка (Русский | English | العربية)
    [self addSectionHeaderKey:LK_SET_LANG_HDR toView:self.settingsScroll y:&y width:panelW];
    UISegmentedControl *langSeg = [[UISegmentedControl alloc] initWithItems:@[@"Русский", @"English", @"العربية"]];
    langSeg.frame = CGRectMake(16, y, panelW - 32, 36);
    langSeg.selectedSegmentIndex = g_Config.lang;
    langSeg.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.08];
    langSeg.selectedSegmentTintColor = accent;
    NSDictionary *nAttr = @{NSForegroundColorAttributeName: [UIColor colorWithWhite:0.85 alpha:1.0], NSFontAttributeName: [UIFont boldSystemFontOfSize:13]};
    NSDictionary *sAttr = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:13]};
    [langSeg setTitleTextAttributes:nAttr forState:UIControlStateNormal];
    [langSeg setTitleTextAttributes:sAttr forState:UIControlStateSelected];
    [langSeg addTarget:self action:@selector(onLanguageChanged:) forControlEvents:UIControlEventValueChanged];
    [self.settingsScroll addSubview:langSeg];
    y += 48.0;

    // 2. Слайдер непрозрачности меню
    [self addSectionHeaderKey:LK_SET_OPACITY_HDR toView:self.settingsScroll y:&y width:panelW];
    UIView *opCard = [[UIView alloc] initWithFrame:CGRectMake(16, y, panelW - 32, 46)];
    opCard.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.06];
    opCard.layer.cornerRadius = 12;
    opCard.layer.borderWidth = 1.0;
    opCard.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.12].CGColor;

    UISlider *opSlider = [[UISlider alloc] initWithFrame:CGRectMake(14, 8, panelW - 110, 30)];
    opSlider.minimumValue = 0.45f;
    opSlider.maximumValue = 1.00f;
    opSlider.value = g_Config.menuOpacity;
    opSlider.minimumTrackTintColor = accent;
    [opSlider addTarget:self action:@selector(onOpacityChanged:) forControlEvents:UIControlEventValueChanged];
    [opCard addSubview:opSlider];

    self.opacityValueLbl = [[UILabel alloc] initWithFrame:CGRectMake(panelW - 90, 8, 46, 30)];
    self.opacityValueLbl.text = [NSString stringWithFormat:@"%d%%", (int)(g_Config.menuOpacity * 100)];
    self.opacityValueLbl.textColor = [UIColor whiteColor];
    self.opacityValueLbl.font = [UIFont boldSystemFontOfSize:13];
    self.opacityValueLbl.textAlignment = NSTextAlignmentRight;
    [opCard addSubview:self.opacityValueLbl];

    [self.settingsScroll addSubview:opCard];
    y += 58.0;

    // 3. Космическая тема (Nebula | Supernova | Pulsar)
    [self addSectionHeaderKey:LK_SET_THEME_HDR toView:self.settingsScroll y:&y width:panelW];
    self.themeSeg = [[UISegmentedControl alloc] initWithItems:@[Tr(LK_THEME_NEBULA), Tr(LK_THEME_CYBER), Tr(LK_THEME_PULSAR)]];
    self.themeSeg.frame = CGRectMake(16, y, panelW - 32, 36);
    self.themeSeg.selectedSegmentIndex = g_Config.themePreset;
    self.themeSeg.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.08];
    self.themeSeg.selectedSegmentTintColor = accent;
    [self.themeSeg setTitleTextAttributes:nAttr forState:UIControlStateNormal];
    [self.themeSeg setTitleTextAttributes:sAttr forState:UIControlStateSelected];
    [self.themeSeg addTarget:self action:@selector(onThemeChanged:) forControlEvents:UIControlEventValueChanged];
    [self.settingsScroll addSubview:self.themeSeg];
    y += 48.0;

    // 4. Визуальные и тактильные эффекты
    [self addSectionHeaderKey:LK_SET_FX_HDR toView:self.settingsScroll y:&y width:panelW];
    [self addToggleKey:LK_FX_STARFIELD tag:101 toView:self.settingsScroll y:&y width:panelW initialOn:g_Config.fxStarfield];
    [self addToggleKey:LK_FX_NEONPULSE tag:102 toView:self.settingsScroll y:&y width:panelW initialOn:g_Config.fxNeonPulse];
    [self addToggleKey:LK_FX_HAPTICS   tag:103 toView:self.settingsScroll y:&y width:panelW initialOn:g_Config.fxHaptics];

    self.settingsScroll.contentSize = CGSizeMake(panelW, y + 20.0);
}

// ============================================================================
// ВКЛАДКА 3: CREATOR (@xantapers)
// ============================================================================
- (void)buildCreatorTabWithWidth:(CGFloat)panelW {
    UIColor *accent = [self primaryAccent];
    UIColor *tgBlue = [UIColor colorWithRed:0.14 green:0.63 blue:0.92 alpha:1.0];

    UIView *card = [[UIView alloc] initWithFrame:CGRectMake(16, 16, panelW - 32, 238)];
    card.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.06];
    card.layer.cornerRadius = 16;
    card.layer.borderWidth = 1.2;
    card.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.16].CGColor;

    UILabel *badge = [[UILabel alloc] initWithFrame:CGRectMake((panelW - 32 - 60) / 2.0, 16, 60, 60)];
    badge.backgroundColor = [UIColor colorWithRed:0.12 green:0.08 blue:0.26 alpha:1.0];
    badge.layer.cornerRadius = 30;
    badge.layer.borderWidth = 2.0;
    badge.layer.borderColor = accent.CGColor;
    badge.clipsToBounds = YES;
    badge.text = @"✦ X";
    badge.textColor = [UIColor whiteColor];
    badge.font = [UIFont boldSystemFontOfSize:22];
    badge.textAlignment = NSTextAlignmentCenter;
    [card addSubview:badge];

    UILabel *handleLbl = [[UILabel alloc] initWithFrame:CGRectMake(14, 82, panelW - 60, 24)];
    handleLbl.text = @"@xantapers";
    handleLbl.textColor = [UIColor whiteColor];
    handleLbl.font = [UIFont boldSystemFontOfSize:19];
    handleLbl.textAlignment = NSTextAlignmentCenter;
    [card addSubview:handleLbl];

    UILabel *roleLbl = [[UILabel alloc] initWithFrame:CGRectMake(14, 106, panelW - 60, 18)];
    roleLbl.text = Tr(LK_CR_ROLE);
    roleLbl.textColor = [self secondaryAccent];
    roleLbl.font = [UIFont systemFontOfSize:11 weight:UIFontWeightSemibold];
    roleLbl.textAlignment = NSTextAlignmentCenter;
    [card addSubview:roleLbl];
    self.locLabels[@(LK_CR_ROLE)] = roleLbl;

    UILabel *bioLbl = [[UILabel alloc] initWithFrame:CGRectMake(16, 130, panelW - 64, 96)];
    bioLbl.text = Tr(LK_CR_BIO);
    bioLbl.textColor = [UIColor colorWithWhite:0.86 alpha:1.0];
    bioLbl.font = [UIFont systemFontOfSize:12];
    bioLbl.numberOfLines = 0;
    bioLbl.textAlignment = NSTextAlignmentCenter;
    [card addSubview:bioLbl];
    self.locLabels[@(LK_CR_BIO)] = bioLbl;

    [self.creatorView addSubview:card];

    UIButton *tgBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    tgBtn.frame = CGRectMake(16, 268, panelW - 32, 46);
    tgBtn.backgroundColor = tgBlue;
    tgBtn.layer.cornerRadius = 12;
    tgBtn.layer.shadowColor = tgBlue.CGColor;
    tgBtn.layer.shadowRadius = 8.0;
    tgBtn.layer.shadowOpacity = 0.5;
    tgBtn.layer.shadowOffset = CGSizeZero;
    [tgBtn setTitle:Tr(LK_CR_OPEN_TG) forState:UIControlStateNormal];
    [tgBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    tgBtn.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    [tgBtn addTarget:self action:@selector(onOpenTelegram) forControlEvents:UIControlEventTouchUpInside];
    [self.creatorView addSubview:tgBtn];
    self.locButtons[@(LK_CR_OPEN_TG)] = tgBtn;

    UIButton *copyBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    copyBtn.frame = CGRectMake(16, 324, panelW - 32, 42);
    copyBtn.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.07];
    copyBtn.layer.cornerRadius = 12;
    copyBtn.layer.borderWidth = 1.2;
    copyBtn.layer.borderColor = accent.CGColor;
    [copyBtn setTitle:Tr(LK_CR_COPY_TG) forState:UIControlStateNormal];
    [copyBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    copyBtn.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [copyBtn addTarget:self action:@selector(onCopyTelegram) forControlEvents:UIControlEventTouchUpInside];
    [self.creatorView addSubview:copyBtn];
    self.locButtons[@(LK_CR_COPY_TG)] = copyBtn;
}

// ============================================================================
// UI-ХЕЛПЕРЫ ДЛЯ СТРОК И СЕТКИ
// ============================================================================
- (void)addSectionHeaderKey:(LKey)key toView:(UIView *)parent y:(CGFloat *)y width:(CGFloat)panelW {
    UILabel *hdr = [[UILabel alloc] initWithFrame:CGRectMake(18, *y, panelW - 36, 18)];
    hdr.text = Tr(key);
    hdr.textColor = [self secondaryAccent];
    hdr.font = [UIFont boldSystemFontOfSize:11];
    [parent addSubview:hdr];
    self.locLabels[@(key)] = hdr;
    *y += 22.0;
}

- (void)addToggleKey:(LKey)key tag:(NSInteger)tag toView:(UIView *)parent y:(CGFloat *)y width:(CGFloat)panelW {
    [self addToggleKey:key tag:tag toView:parent y:y width:panelW initialOn:NO];
}

- (void)addToggleKey:(LKey)key tag:(NSInteger)tag toView:(UIView *)parent y:(CGFloat *)y width:(CGFloat)panelW initialOn:(BOOL)initOn {
    CGFloat rowW = panelW - 32.0;
    UIView *row = [[UIView alloc] initWithFrame:CGRectMake(16, *y, rowW, 40)];
    row.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.06];
    row.layer.cornerRadius = 11;
    row.layer.borderWidth = 1.0;
    row.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.10].CGColor;

    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, rowW - 74, 40)];
    lbl.text = Tr(key);
    lbl.textColor = [UIColor whiteColor];
    lbl.font = [UIFont systemFontOfSize:12.5 weight:UIFontWeightMedium];
    lbl.adjustsFontSizeToFitWidth = YES;
    lbl.minimumScaleFactor = 0.8;
    [row addSubview:lbl];
    self.locLabels[@(key)] = lbl;

    UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(rowW - 58, 4.5, 50, 30)];
    sw.tag = tag;
    sw.on = initOn;
    sw.onTintColor = [self primaryAccent];
    [sw addTarget:self action:@selector(onSwitchChanged:) forControlEvents:UIControlEventValueChanged];
    [row addSubview:sw];
    [self.allSwitches addObject:sw];

    [parent addSubview:row];
    *y += 45.0;
}

- (void)addGridButtonPairLeftKey:(LKey)leftKey leftSel:(SEL)leftSel
                        rightKey:(LKey)rightKey rightSel:(SEL)rightSel
                               y:(CGFloat *)y width:(CGFloat)panelW {
    CGFloat gap = 10.0;
    CGFloat btnW = (panelW - 32.0 - gap) / 2.0;

    UIButton *b1 = [self makeCosmicButtonWithFrame:CGRectMake(16, *y, btnW, 40) key:leftKey selector:leftSel];
    UIButton *b2 = [self makeCosmicButtonWithFrame:CGRectMake(16 + btnW + gap, *y, btnW, 40) key:rightKey selector:rightSel];

    [self.hacksScroll addSubview:b1];
    [self.hacksScroll addSubview:b2];
    *y += 46.0;
}

- (UIButton *)makeCosmicButtonWithFrame:(CGRect)frame key:(LKey)key selector:(SEL)sel {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = frame;
    btn.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.08];
    btn.layer.cornerRadius = 11;
    btn.layer.borderWidth = 1.0;
    btn.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.18].CGColor;
    [btn setTitle:Tr(key) forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:11.5];
    btn.titleLabel.adjustsFontSizeToFitWidth = YES;
    btn.titleLabel.minimumScaleFactor = 0.75;
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    self.locButtons[@(key)] = btn;
    return btn;
}

// ============================================================================
// ОБНОВЛЕНИЕ ЛОКАЛИЗАЦИИ И ТЕМЫ В РЕАЛЬНОМ ВРЕМЕНИ
// ============================================================================
- (void)applyLanguage {
    BOOL isArabic = (g_Config.lang == 2);
    NSTextAlignment align = isArabic ? NSTextAlignmentRight : NSTextAlignmentLeft;

    self.headerSubtitle.text = Tr(LK_HEADER_SUB);
    [self.tabControl setTitle:Tr(LK_TAB_HACKS) forSegmentAtIndex:0];
    [self.tabControl setTitle:Tr(LK_TAB_SETTINGS) forSegmentAtIndex:1];
    [self.tabControl setTitle:Tr(LK_TAB_CREATOR) forSegmentAtIndex:2];

    [self.themeSeg setTitle:Tr(LK_THEME_NEBULA) forSegmentAtIndex:0];
    [self.themeSeg setTitle:Tr(LK_THEME_CYBER) forSegmentAtIndex:1];
    [self.themeSeg setTitle:Tr(LK_THEME_PULSAR) forSegmentAtIndex:2];

    for (NSNumber *numKey in self.locLabels) {
        LKey k = (LKey)numKey.intValue;
        UILabel *lbl = self.locLabels[numKey];
        lbl.text = Tr(k);
        if (k != LK_CR_ROLE && k != LK_CR_BIO) {
            lbl.textAlignment = align;
        }
    }

    for (NSNumber *numKey in self.locButtons) {
        LKey k = (LKey)numKey.intValue;
        UIButton *btn = self.locButtons[numKey];
        [btn setTitle:Tr(k) forState:UIControlStateNormal];
    }
}

- (void)applyTheme {
    UIColor *accent = [self primaryAccent];
    UIColor *sec = [self secondaryAccent];

    self.cosmicGradient.colors = [self gradientColorsForPreset];
    self.panelView.layer.borderColor = accent.CGColor;
    self.panelView.layer.shadowColor = accent.CGColor;
    self.floatingBtn.layer.borderColor = accent.CGColor;
    self.floatingBtn.layer.shadowColor = accent.CGColor;
    self.tabControl.selectedSegmentTintColor = accent;
    self.themeSeg.selectedSegmentTintColor = accent;
    self.headerSubtitle.textColor = sec;

    for (UISwitch *sw in self.allSwitches) {
        sw.onTintColor = accent;
    }
}

// ============================================================================
// ОБРАБОТЧИКИ СОБЫТИЙ UI
// ============================================================================
- (void)onTabChanged:(UISegmentedControl *)seg {
    [self triggerHaptic];
    NSInteger idx = seg.selectedSegmentIndex;
    self.hacksScroll.hidden    = (idx != 0);
    self.settingsScroll.hidden = (idx != 1);
    self.creatorView.hidden    = (idx != 2);
}

- (void)onLanguageChanged:(UISegmentedControl *)seg {
    [self triggerHaptic];
    g_Config.lang = (int)seg.selectedSegmentIndex;
    [self applyLanguage];
}

- (void)onOpacityChanged:(UISlider *)slider {
    g_Config.menuOpacity = slider.value;
    self.panelView.alpha = slider.value;
    self.opacityValueLbl.text = [NSString stringWithFormat:@"%d%%", (int)(slider.value * 100)];
}

- (void)onThemeChanged:(UISegmentedControl *)seg {
    [self triggerHaptic];
    g_Config.themePreset = (int)seg.selectedSegmentIndex;
    [self applyTheme];
}

- (void)onSwitchChanged:(UISwitch *)sender {
    [self triggerHaptic];
    switch (sender.tag) {
        case 1:   g_Config.autoGreenRelease = sender.isOn; break;
        case 2:   g_Config.noContestPenalty = sender.isOn; break;
        case 3:   g_Config.longRangeDunk    = sender.isOn; break;
        case 4:   g_Config.freezeShotClock  = sender.isOn; break;
        case 5:   g_Config.freezeOvertime   = sender.isOn; break;
        case 6:   g_Config.infiniteStops    = sender.isOn; break;
        case 7:   g_Config.maxStyleMult     = sender.isOn; break;
        case 8:   g_Config.alwaysOnFire     = sender.isOn; break;
        case 9:   g_Config.alwaysThreePoint = sender.isOn; break;
        case 10:  g_Config.disableDefender  = sender.isOn; break;
        case 11:  g_Config.instantWin15Pt   = sender.isOn; break;
        case 12:  g_Config.rainbowBackboard = sender.isOn; break;
        case 101:
            g_Config.fxStarfield = sender.isOn;
            self.starfieldContainer.hidden = !sender.isOn;
            break;
        case 102:
            g_Config.fxNeonPulse = sender.isOn;
            if (!sender.isOn) [self applyTheme];
            break;
        case 103:
            g_Config.fxHaptics = sender.isOn;
            break;
        default: break;
    }
}

- (void)onAddCash100k {
    [self triggerHaptic];
    ActionAddCash(100000);
    [self refreshStatusWithNote:Tr(LK_NOTE_100K)];
}

- (void)onAddCash1m {
    [self triggerHaptic];
    ActionAddCash(1000000);
    [self refreshStatusWithNote:Tr(LK_NOTE_1M)];
}

- (void)onUnlockAllItems {
    [self triggerHaptic];
    int32_t count = ActionUnlockAllShopItems();
    [self refreshStatusWithNote:[NSString stringWithFormat:@"%@ (%d)", Tr(LK_NOTE_ITEMS), count]];
}

- (void)onUnlockPass {
    [self triggerHaptic];
    ActionUnlockBattlePass();
    [self refreshStatusWithNote:Tr(LK_NOTE_PASS)];
}

- (void)onResetLuckyDrop {
    [self triggerHaptic];
    ActionResetLuckyDrop();
    [self refreshStatusWithNote:Tr(LK_NOTE_DROP)];
}

- (void)onInstantMake {
    [self triggerHaptic];
    ActionScoreBucket();
    [self refreshStatusWithNote:Tr(LK_NOTE_MAKE)];
}

- (void)onSkipTutorial {
    [self triggerHaptic];
    ActionSkipTutorial();
    [self refreshStatusWithNote:Tr(LK_NOTE_TUT)];
}

- (void)onPulseBoard {
    [self triggerHaptic];
    ActionPulseBackboard();
}

- (void)onOpenTelegram {
    [self triggerHaptic];
    NSURL *tgAppUrl = [NSURL URLWithString:@"tg://resolve?domain=xantapers"];
    NSURL *tgWebUrl = [NSURL URLWithString:@"https://t.me/xantapers"];
    UIApplication *app = [UIApplication sharedApplication];
    if ([app canOpenURL:tgAppUrl]) {
        [app openURL:tgAppUrl options:@{} completionHandler:nil];
    } else {
        [app openURL:tgWebUrl options:@{} completionHandler:nil];
    }
}

- (void)onCopyTelegram {
    [self triggerHaptic];
    [UIPasteboard generalPasteboard].string = @"https://t.me/xantapers";
    [self refreshStatusWithNote:Tr(LK_NOTE_COPIED)];
}

- (void)refreshStatusWithNote:(NSString *)note {
    int64_t cash = ActionGetCash();
    if (note && note.length > 0) {
        self.statusLabel.text = [NSString stringWithFormat:@"$%lld • %@", cash, note];
    } else {
        self.statusLabel.text = [NSString stringWithFormat:@"Cash: $%lld", cash];
    }
}

- (void)toggleMenu {
    [self triggerHaptic];
    self.panelView.hidden = !self.panelView.hidden;
    if (!self.panelView.hidden) {
        [self refreshStatusWithNote:nil];
    }
}

- (void)handlePan:(UIPanGestureRecognizer *)pan {
    UIWindow *win = [self activeKeyWindow];
    if (!win) return;
    CGPoint trans = [pan translationInView:win];
    CGPoint center = pan.view.center;
    center.x += trans.x;
    center.y += trans.y;
    pan.view.center = center;
    [pan setTranslation:CGPointZero inView:win];
}

- (void)handlePanelPan:(UIPanGestureRecognizer *)pan {
    UIWindow *win = [self activeKeyWindow];
    if (!win) return;
    CGPoint trans = [pan translationInView:win];
    CGPoint center = self.panelView.center;
    center.x += trans.x;
    center.y += trans.y;
    self.panelView.center = center;
    [pan setTranslation:CGPointZero inView:win];
}

// ============================================================================
// ТАЙМЕР ИГРОВОЙ ЛОГИКИ И КОСМИЧЕСКИХ АНИМАЦИЙ (30 ГЦ)
// ============================================================================
- (void)onTimerTick {
    OnModTick();

    if (self.panelView.hidden) return;

    // 1. Анимация дрейфа звёзд (Starfield)
    if (g_Config.fxStarfield && self.starLayers.count > 0) {
        [CATransaction begin];
        [CATransaction setDisableActions:YES];
        CGFloat maxH = self.panelView.bounds.size.height;
        CGFloat maxW = self.panelView.bounds.size.width;
        for (NSUInteger i = 0; i < self.starLayers.count; ++i) {
            CALayer *star = self.starLayers[i];
            float spd = self.starSpeeds[i].floatValue;
            CGRect f = star.frame;
            f.origin.y -= spd;
            if (f.origin.y < -4.0) {
                f.origin.y = maxH + 2.0;
                f.origin.x = (CGFloat)arc4random_uniform((uint32_t)MAX(maxW, 320));
            }
            star.frame = f;
        }
        [CATransaction commit];
    }

    // 2. Анимация неонового дыхания рамки (Neon Border Pulse)
    if (g_Config.fxNeonPulse) {
        self.neonPhase = fmodf(self.neonPhase + 0.015f, 1.0f);
        CGFloat baseHue = (g_Config.themePreset == 1) ? 0.53 : ((g_Config.themePreset == 2) ? 0.92 : 0.74);
        CGFloat shift = sinf(self.neonPhase * (float)M_PI * 2.0f) * 0.08f;
        CGFloat hue = fmodf((float)baseHue + shift + 1.0f, 1.0f);
        UIColor *pulseColor = [UIColor colorWithHue:hue saturation:0.88 brightness:1.0 alpha:1.0];
        self.panelView.layer.borderColor = pulseColor.CGColor;
        self.panelView.layer.shadowColor = pulseColor.CGColor;
        self.floatingBtn.layer.borderColor = pulseColor.CGColor;
    }
}

@end

// ============================================================================
// КОНСТРУКТОР DYLIB
// ============================================================================
__attribute__((constructor))
static void TrinityModInit() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[TrinityModOverlay shared] setupIfNeeded];
    });
}
