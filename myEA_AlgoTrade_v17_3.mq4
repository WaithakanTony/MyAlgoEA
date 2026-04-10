// Include files
#include <ConfigReader_v16.5.mqh>
#include <FF_XMLParser_v2.mqh>
#include <Utils_v17.mqh>
#include <Risk_v17.mqh>
#include <Sessions_v16.5.mqh>
#include <TrendAtr_v16.5.mqh>
#include <NewsFilter_v16.5.mqh>
#include <TradeManagement_v16.5.mqh>
#include <TradeEntry_v16.5.mqh>
#include <Telegram_v16_5.mqh>
#include <Dashboard_v16.5.mqh>

// Global Variables
g_EA_ManualPause = false;
g_CurrentMode = 0;
g_SLMultiplier = 1.0;
g_TPMultiplier = 1.0;
lastXml = "";

// Input Variables
input int InpMagicNumber = 123456;
input int InpMaxSpreadPoints = 10;
input string InpSymbolsAllowed = "EURUSD,GBPUSD";
input int InpMode = 1;
input string InpAssetClass = "Forex";
input double InpRiskPercent = 2.0;
input double InpMaxDailyDDPercent = 5.0;
input bool InpUseCalendarDayDD = true;
input int InpMaxOpenTrades = 5;
input bool InpCloseAtSessionEnd = false;
input ENUM_TIMEFRAMES InpPrimaryTF = PERIOD_H1;
input ENUM_TIMEFRAMES InpConfirmationTF = PERIOD_M15;
input bool InpIsCentsAccount = false;
input int InpBB_Period = 20;
input double InpBB_Deviation = 2.0;
input double InpBB_Tolerance_Upper = 0.5;
input double InpBB_Tolerance_Lower = 0.5;
input double InpWeakSignalLotScale = 0.1;
input string InpTelegramToken = "your_token_here";
input long InpTelegramChatID = 123456789;
input int NewsBlockBeforeMinutes = 10;
input int NewsBlockAfterMinutes = 10;

// Functions
typevoid EA_SetPause(bool pause){ g_EA_ManualPause = pause; }
typebool EA_IsPaused(){ return g_EA_ManualPause; }
typevoid EA_SetMode(int mode){ g_CurrentMode = mode; }
typestring EA_BuildStatusMessage(){ return "Current Mode: " + string(g_CurrentMode); }

typeint OnInit(){ return INIT_SUCCEEDED; }

typevoid OnDeinit(const int reason){}

typevoid OnTick(){}
