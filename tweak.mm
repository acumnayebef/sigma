#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <mach-o/dyld.h>
#import <mach-o/loader.h>
#import <stdint.h>
#import <stdbool.h>

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
    constexpr uintptr_t BS_Field_releaseBand01_x              = 0xB44; // float (Vector2.x)
    constexpr uintptr_t BS_Field_releaseBand01_y              = 0xB48; // float (Vector2.y)
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
}

// ============================================================================
// СТРУКТУРА КОНФИГУРАЦИИ ЧИТА (ВСЕ АКТУАЛЬНЫЕ ФУНКЦИИ)
// ============================================================================
struct ModConfig {
    bool autoGreenRelease  = false; // 1. Auto Green Release (100% попадание + широкое зелёное окно)
    bool noContestPenalty  = false; // 2. Игнорировать защиту (No Contest Penalty)
    bool longRangeDunk     = false; // 3. Дальние данки (Long Range Dunk с 12-15 м)
    bool freezeShotClock   = false; // 4. Заморозка таймера владения (14 сек)
    bool freezeOvertime    = false; // 5. Заморозка таймера Overtime (60 сек, без штрафов)
    bool infiniteStops     = false; // 6. Бесконечные жизни / 0 потерь
    bool maxStyleMult      = false; // 7. Множитель стиля x10 + несгораемый банк
    bool alwaysOnFire      = false; // 8. Вечный огонь (Max Heat / Tier 3 On Fire)
    bool alwaysThreePoint  = false; // 9. Каждый бросок считается 3-очковым
    bool disableDefender   = false; // 10. Отключить перехваты и чтение бросков у защитника
    bool instantWin15Pt    = false; // 11. Победа за 1 мяч (15pt Mode)
};

static ModConfig g_Config;
static uintptr_t g_UnityBase = 0;

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

// ============================================================================
// ЦИКЛ ОБНОВЛЕНИЯ ПЕРЕКЛЮЧАТЕЛЕЙ (30 ГЦ, ТОЛЬКО HEAP — БЕЗ JIT / БЕЗ JB)
// ============================================================================
static void OnModTick() {
    if (!ResolveUnityBase()) return;

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
// UI-ОВЕРЛЕЙ С ДВУМЯ ВКЛАДКАМИ: [Hacks] И [Creator]
// ============================================================================
@interface TrinityModOverlay : NSObject
@property (nonatomic, strong) UIButton *floatingBtn;
@property (nonatomic, strong) UIView *panelView;
@property (nonatomic, strong) UISegmentedControl *tabControl;
@property (nonatomic, strong) UIScrollView *hacksScroll;
@property (nonatomic, strong) UIView *creatorView;
@property (nonatomic, strong) UILabel *statusLabel;
@property (nonatomic, strong) NSTimer *tickTimer;
+ (instancetype)shared;
- (void)setupIfNeeded;
@end

@implementation TrinityModOverlay

+ (instancetype)shared {
    static TrinityModOverlay *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[TrinityModOverlay alloc] init];
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

- (void)setupIfNeeded {
    UIWindow *win = [self activeKeyWindow];
    if (!win) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setupIfNeeded];
        });
        return;
    }
    if (self.floatingBtn) return;

    UIColor *accent = [UIColor colorWithRed:0.96 green:0.55 blue:0.14 alpha:1.0];
    UIColor *bgDark = [UIColor colorWithRed:0.08 green:0.08 blue:0.11 alpha:0.96];
    UIColor *cardBg = [UIColor colorWithRed:0.14 green:0.14 blue:0.19 alpha:1.0];

    // 1. Плавающая кнопка открытия меню
    self.floatingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.floatingBtn.frame = CGRectMake(20, 120, 56, 56);
    self.floatingBtn.backgroundColor = bgDark;
    self.floatingBtn.layer.cornerRadius = 28;
    self.floatingBtn.layer.borderWidth = 2.0;
    self.floatingBtn.layer.borderColor = accent.CGColor;
    [self.floatingBtn setTitle:@"MOD" forState:UIControlStateNormal];
    self.floatingBtn.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    [self.floatingBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.floatingBtn addTarget:self action:@selector(toggleMenu) forControlEvents:UIControlEventTouchUpInside];

    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [self.floatingBtn addGestureRecognizer:pan];
    [win addSubview:self.floatingBtn];

    // 2. Главная панель меню
    CGFloat panelW = 320.0;
    CGFloat panelH = 480.0;
    CGFloat screenW = win.bounds.size.width;
    CGFloat screenH = win.bounds.size.height;
    self.panelView = [[UIView alloc] initWithFrame:CGRectMake((screenW - panelW) / 2.0, (screenH - panelH) / 2.0, panelW, panelH)];
    self.panelView.backgroundColor = bgDark;
    self.panelView.layer.cornerRadius = 18;
    self.panelView.layer.borderWidth = 1.5;
    self.panelView.layer.borderColor = accent.CGColor;
    self.panelView.clipsToBounds = YES;
    self.panelView.hidden = YES;

    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, panelW, 92)];
    headerView.backgroundColor = [UIColor colorWithRed:0.11 green:0.11 blue:0.15 alpha:1.0];
    UIPanGestureRecognizer *headerPan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanelPan:)];
    [headerView addGestureRecognizer:headerPan];

    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(16, 10, panelW - 56, 22)];
    title.text = @"ONES MOD MENU // @xantapers";
    title.textColor = accent;
    title.font = [UIFont boldSystemFontOfSize:15];
    [headerView addSubview:title];

    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    closeBtn.frame = CGRectMake(panelW - 38, 8, 28, 28);
    closeBtn.backgroundColor = cardBg;
    closeBtn.layer.cornerRadius = 14;
    [closeBtn setTitle:@"✕" forState:UIControlStateNormal];
    [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    closeBtn.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [closeBtn addTarget:self action:@selector(toggleMenu) forControlEvents:UIControlEventTouchUpInside];
    [headerView addSubview:closeBtn];

    self.statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(16, 32, panelW - 32, 18)];
    self.statusLabel.text = @"Cash: ---";
    self.statusLabel.textColor = [UIColor colorWithWhite:0.75 alpha:1.0];
    self.statusLabel.font = [UIFont systemFontOfSize:12];
    [headerView addSubview:self.statusLabel];

    // Переключатель вкладок: Hacks | Creator
    self.tabControl = [[UISegmentedControl alloc] initWithItems:@[@"Hacks", @"Creator"]];
    self.tabControl.frame = CGRectMake(16, 54, panelW - 32, 30);
    self.tabControl.selectedSegmentIndex = 0;
    self.tabControl.selectedSegmentTintColor = accent;
    NSDictionary *normalAttrs = @{NSForegroundColorAttributeName: [UIColor lightGrayColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:13]};
    NSDictionary *selectedAttrs = @{NSForegroundColorAttributeName: [UIColor blackColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:13]};
    [self.tabControl setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [self.tabControl setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [self.tabControl addTarget:self action:@selector(onTabChanged:) forControlEvents:UIControlEventValueChanged];
    [headerView addSubview:self.tabControl];

    [self.panelView addSubview:headerView];

    // 3. Контейнер вкладки HACKS (UIScrollView со всеми 18 функциями)
    CGRect contentFrame = CGRectMake(0, 92, panelW, panelH - 92);
    self.hacksScroll = [[UIScrollView alloc] initWithFrame:contentFrame];
    self.hacksScroll.showsVerticalScrollIndicator = YES;
    self.hacksScroll.alwaysBounceVertical = YES;

    CGFloat y = 12.0;
    [self addSectionHeader:@"БРОСКИ, ДАНКИ И ГЕЙМПЛЕЙ (LIVE)" y:&y];
    [self addToggle:@"Авто-идеальный бросок (Auto Green)" tag:1 y:&y];
    [self addToggle:@"Игнорировать защиту (No Contest)" tag:2 y:&y];
    [self addToggle:@"Дальние данки (Long Range Dunk)" tag:3 y:&y];
    [self addToggle:@"Заморозить ShotClock (14 сек)" tag:4 y:&y];
    [self addToggle:@"Бесконечное время Overtime (60 сек)" tag:5 y:&y];
    [self addToggle:@"Бесконечные жизни (No Stops)" tag:6 y:&y];
    [self addToggle:@"Множитель стиля x10 + Сейв банка" tag:7 y:&y];
    [self addToggle:@"Вечный огонь (Always On Fire)" tag:8 y:&y];
    [self addToggle:@"Каждый бросок = 3 очка" tag:9 y:&y];
    [self addToggle:@"Отключить перехваты у защитника" tag:10 y:&y];
    [self addToggle:@"Победа за 1 мяч (15pt Mode)" tag:11 y:&y];

    y += 6.0;
    [self addSectionHeader:@"ЭКОНОМИКА, ГАРДЕРОБ И ПРОПУСК" y:&y];
    [self addActionButton:@"+100,000 Cash (Safe Checksum)" selector:@selector(onAddCash100k) y:&y];
    [self addActionButton:@"+1,000,000 Cash (Safe Checksum)" selector:@selector(onAddCash1m) y:&y];
    [self addActionButton:@"Открыть весь гардероб (ShopCatalogue)" selector:@selector(onUnlockAllItems) y:&y];
    [self addActionButton:@"Открыть Battle Pass + 500 побед" selector:@selector(onUnlockPass) y:&y];
    [self addActionButton:@"Сбросить таймер Lucky Drop" selector:@selector(onResetLuckyDrop) y:&y];
    [self addActionButton:@"Засчитать попадание (Instant Make)" selector:@selector(onInstantMake) y:&y];
    [self addActionButton:@"Пропустить туториал" selector:@selector(onSkipTutorial) y:&y];

    self.hacksScroll.contentSize = CGSizeMake(panelW, y + 16.0);
    [self.panelView addSubview:self.hacksScroll];

    // 4. Контейнер вкладки CREATOR (@xantapers)
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

- (void)buildCreatorTabWithWidth:(CGFloat)panelW {
    UIColor *accent = [UIColor colorWithRed:0.96 green:0.55 blue:0.14 alpha:1.0];
    UIColor *cardBg = [UIColor colorWithRed:0.13 green:0.13 blue:0.18 alpha:1.0];
    UIColor *tgBlue = [UIColor colorWithRed:0.14 green:0.63 blue:0.87 alpha:1.0];

    UIView *card = [[UIView alloc] initWithFrame:CGRectMake(16, 16, panelW - 32, 230)];
    card.backgroundColor = cardBg;
    card.layer.cornerRadius = 14;
    card.layer.borderWidth = 1.0;
    card.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.12].CGColor;

    UILabel *badge = [[UILabel alloc] initWithFrame:CGRectMake((panelW - 32 - 56) / 2.0, 16, 56, 56)];
    badge.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.27 alpha:1.0];
    badge.layer.cornerRadius = 28;
    badge.layer.borderWidth = 2.0;
    badge.layer.borderColor = accent.CGColor;
    badge.clipsToBounds = YES;
    badge.text = @"X";
    badge.textColor = accent;
    badge.font = [UIFont boldSystemFontOfSize:26];
    badge.textAlignment = NSTextAlignmentCenter;
    [card addSubview:badge];

    UILabel *handleLbl = [[UILabel alloc] initWithFrame:CGRectMake(12, 80, panelW - 56, 24)];
    handleLbl.text = @"@xantapers";
    handleLbl.textColor = [UIColor whiteColor];
    handleLbl.font = [UIFont boldSystemFontOfSize:18];
    handleLbl.textAlignment = NSTextAlignmentCenter;
    [card addSubview:handleLbl];

    UILabel *roleLbl = [[UILabel alloc] initWithFrame:CGRectMake(12, 104, panelW - 56, 18)];
    roleLbl.text = @"iOS Modding • Reverse Engineering • No-JB / Sideload";
    roleLbl.textColor = accent;
    roleLbl.font = [UIFont systemFontOfSize:11 weight:UIFontWeightSemibold];
    roleLbl.textAlignment = NSTextAlignmentCenter;
    [card addSubview:roleLbl];

    UILabel *bioLbl = [[UILabel alloc] initWithFrame:CGRectMake(14, 128, panelW - 60, 90)];
    bioLbl.text = @"Автор модификации и реверс-инжиниринга игры.\n\nВ Telegram-канале выходят свежие обновления мода, эксклюзивные dylib-сборки, разборы дампов Il2Cpp и готовые IPA под Sideload без джейлбрейка.";
    bioLbl.textColor = [UIColor colorWithWhite:0.82 alpha:1.0];
    bioLbl.font = [UIFont systemFontOfSize:12];
    bioLbl.numberOfLines = 0;
    bioLbl.textAlignment = NSTextAlignmentCenter;
    [card addSubview:bioLbl];

    [self.creatorView addSubview:card];

    UIButton *tgBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    tgBtn.frame = CGRectMake(16, 260, panelW - 32, 44);
    tgBtn.backgroundColor = tgBlue;
    tgBtn.layer.cornerRadius = 10;
    [tgBtn setTitle:@"Открыть Telegram: t.me/xantapers" forState:UIControlStateNormal];
    [tgBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    tgBtn.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    [tgBtn addTarget:self action:@selector(onOpenTelegram) forControlEvents:UIControlEventTouchUpInside];
    [self.creatorView addSubview:tgBtn];

    UIButton *copyBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    copyBtn.frame = CGRectMake(16, 314, panelW - 32, 38);
    copyBtn.backgroundColor = cardBg;
    copyBtn.layer.cornerRadius = 10;
    copyBtn.layer.borderWidth = 1.0;
    copyBtn.layer.borderColor = accent.CGColor;
    [copyBtn setTitle:@"Скопировать @xantapers" forState:UIControlStateNormal];
    [copyBtn setTitleColor:accent forState:UIControlStateNormal];
    copyBtn.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [copyBtn addTarget:self action:@selector(onCopyTelegram) forControlEvents:UIControlEventTouchUpInside];
    [self.creatorView addSubview:copyBtn];
}

- (void)addSectionHeader:(NSString *)text y:(CGFloat *)y {
    UILabel *hdr = [[UILabel alloc] initWithFrame:CGRectMake(16, *y, 288, 18)];
    hdr.text = text;
    hdr.textColor = [UIColor colorWithRed:0.96 green:0.55 blue:0.14 alpha:1.0];
    hdr.font = [UIFont boldSystemFontOfSize:11];
    [self.hacksScroll addSubview:hdr];
    *y += 22.0;
}

- (void)addToggle:(NSString *)text tag:(NSInteger)tag y:(CGFloat *)y {
    UIView *row = [[UIView alloc] initWithFrame:CGRectMake(14, *y, 292, 36)];
    row.backgroundColor = [UIColor colorWithRed:0.13 green:0.13 blue:0.18 alpha:1.0];
    row.layer.cornerRadius = 8;

    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 222, 36)];
    lbl.text = text;
    lbl.textColor = [UIColor whiteColor];
    lbl.font = [UIFont systemFontOfSize:12 weight:UIFontWeightMedium];
    [row addSubview:lbl];

    UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(234, 2.5, 50, 30)];
    sw.tag = tag;
    sw.onTintColor = [UIColor colorWithRed:0.96 green:0.55 blue:0.14 alpha:1.0];
    [sw addTarget:self action:@selector(onSwitchChanged:) forControlEvents:UIControlEventValueChanged];
    [row addSubview:sw];

    [self.hacksScroll addSubview:row];
    *y += 40.0;
}

- (void)addActionButton:(NSString *)text selector:(SEL)sel y:(CGFloat *)y {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(14, *y, 292, 36);
    btn.backgroundColor = [UIColor colorWithRed:0.17 green:0.17 blue:0.24 alpha:1.0];
    btn.layer.cornerRadius = 8;
    btn.layer.borderWidth = 1.0;
    btn.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.10].CGColor;
    [btn setTitle:text forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    [self.hacksScroll addSubview:btn];
    *y += 42.0;
}

// ============================================================================
// ОБРАБОТЧИКИ СОБЫТИЙ UI
// ============================================================================
- (void)onTabChanged:(UISegmentedControl *)seg {
    BOOL isHacks = (seg.selectedSegmentIndex == 0);
    self.hacksScroll.hidden = !isHacks;
    self.creatorView.hidden = isHacks;
}

- (void)onSwitchChanged:(UISwitch *)sender {
    switch (sender.tag) {
        case 1:  g_Config.autoGreenRelease = sender.isOn; break;
        case 2:  g_Config.noContestPenalty = sender.isOn; break;
        case 3:  g_Config.longRangeDunk    = sender.isOn; break;
        case 4:  g_Config.freezeShotClock  = sender.isOn; break;
        case 5:  g_Config.freezeOvertime   = sender.isOn; break;
        case 6:  g_Config.infiniteStops    = sender.isOn; break;
        case 7:  g_Config.maxStyleMult     = sender.isOn; break;
        case 8:  g_Config.alwaysOnFire     = sender.isOn; break;
        case 9:  g_Config.alwaysThreePoint = sender.isOn; break;
        case 10: g_Config.disableDefender  = sender.isOn; break;
        case 11: g_Config.instantWin15Pt   = sender.isOn; break;
        default: break;
    }
}

- (void)onAddCash100k {
    ActionAddCash(100000);
    [self refreshStatusWithNote:@"+100k Cash начислено"];
}

- (void)onAddCash1m {
    ActionAddCash(1000000);
    [self refreshStatusWithNote:@"+1M Cash начислено"];
}

- (void)onUnlockAllItems {
    int32_t count = ActionUnlockAllShopItems();
    [self refreshStatusWithNote:[NSString stringWithFormat:@"Открыто вещей: %d", count]];
}

- (void)onUnlockPass {
    ActionUnlockBattlePass();
    [self refreshStatusWithNote:@"Battle Pass + 500 побед активированы"];
}

- (void)onResetLuckyDrop {
    ActionResetLuckyDrop();
    [self refreshStatusWithNote:@"Кулдаун Lucky Drop сброшен"];
}

- (void)onInstantMake {
    ActionScoreBucket();
    [self refreshStatusWithNote:@"Попадание засчитано"];
}

- (void)onSkipTutorial {
    ActionSkipTutorial();
    [self refreshStatusWithNote:@"Туториал пропущен"];
}

- (void)onOpenTelegram {
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
    [UIPasteboard generalPasteboard].string = @"https://t.me/xantapers";
    [self refreshStatusWithNote:@"Ссылка t.me/xantapers скопирована"];
}

- (void)refreshStatusWithNote:(NSString *)note {
    int64_t cash = ActionGetCash();
    if (note && note.length > 0) {
        self.statusLabel.text = [NSString stringWithFormat:@"Cash: %lld  |  %@", cash, note];
    } else {
        self.statusLabel.text = [NSString stringWithFormat:@"Cash: %lld", cash];
    }
}

- (void)toggleMenu {
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

- (void)onTimerTick {
    OnModTick();
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
