// TA-Lib wrapper

// kdb+ appends .so; library must be in the same directory or on $QHOME path
.ta.LIB:` sv .qi.pkgs.ta,{r,$[`mac=r:lower[x].qi[x]?1b;`$system"uname -m";()]}[`MAC`LIN`WIN],`ta_wrap;

// MAType constants matching ta_defs.h TA_MAType enum
.ta.MA:`sma`ema`wma`dema`tema`trima`kama`mama`t3!til 9;
.ta.FUNCS:(!).("SJ";",")0:.qi.path(.qi.pkgs`ta;`functions.csv)

{sv[`;`.ta,x]set .ta.LIB 2:(`$"ta_",ssr[string x;".";"_"];.ta.FUNCS x)}each key .ta.FUNCS;

/.ta.sma       :.ta.LIB 2:(`ta_sma;        2);  // prices; period

// ---------------------------------------------------------------------------
// Examples
// ---------------------------------------------------------------------------
//
// prices: 100 + sums -0.5 + 100?1.0f   / random float list
// hlc:    (high;low;close)              / typical bar data
//
// SMA-20:
//   .ta.sma[prices; 20]
//
// RSI-14:
//   .ta.rsi[prices; 14]
//
// Bollinger Bands (20, 2 stddev, SMA):
//   .ta.bbands[prices; 20; 2.0; 2.0; .ta.MA`sma]
//   (.ta.bbands[prices;20;2.0;2.0;0])`upper
//
// MACD (12,26,9):
//   .ta.macd[prices; 12; 26; 9]
//   (.ta.macd[prices;12;26;9])`macd
//
// ADX (14):
//   .ta.adx[high; low; close; 14]
//
// Stochastic (5,3,0,3,0):
//   .ta.stoch[high; low; close; 5; 3; 0; 3; 0]
//   (.ta.stoch[high;low;close;5;3;0;3;0])`slowk
//
// Bollinger + RSI combined:
//   bb:.ta.bbands[prices;20;2.0;2.0;0];
//   r:.ta.rsi[prices;14];
//   flip`price`upper`mid`lower`rsi!(prices;bb`upper;bb`mid;bb`lower;r)
