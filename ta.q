// TA-Lib wrapper

// kdb+ appends .so; library must be in the same directory or on $QHOME path
.ta.LIB:` sv .qi.pkgs.ta,{r,$[`mac=r:lower[x].qi[x]?1b;`$system"uname -m";()]}[`MAC`LIN`WIN],`ta_wrap;

// MAType constants matching ta_defs.h TA_MAType enum
.ta.MA:`sma`ema`wma`dema`tema`trima`kama`mama`t3!til 9;
.ta.FUNCS:(!).("SJ";",")0:.qi.path(.qi.pkgs`ta;`functions.csv)

{sv[`;`.ta,x]set .ta.LIB 2:(`$"ta_",ssr[string x;".";"_"];.ta.FUNCS x)}each key .ta.FUNCS;

.ta.bbandsx:.ta.bbands
.ta.bbands:{[a;b;c;d;e] flip .ta.bbandsx[a;b;c;d;e]}

// ---------------------------------------------------------------------------
// Null-safe wrappers: strip leading 0N from numeric vector inputs, re-pad output
// ---------------------------------------------------------------------------
.ta._orig:()!();

.ta._apply:{[f;args]
  vecs:where(type each args)in 7 8 9h;             // long/real/float lists only (not scalar params)
  n:$[count vecs;max{(mins null x)?0b}each args vecs;0];
  if[n=0;:f . args];
  res:f . @[args;vecs;n _];
  pad:{(x#0Nf),y}[n];
  $[98h=type res;flip(key d)!pad each value d:flip res;
    99h=type res;(key res)!pad each value res;
    pad res]
 };

// Re-wrap each function; use dict lookup for orig to allow names starting with digits (cdl.2crows etc)
{[nm]
  .ta._orig[nm]:get sv[`;`.ta,nm];
  n:.ta.FUNCS nm;
  args:";"sv string(`x`y`z`arg3`arg4`arg5`arg6`arg7)til n;
  sv[`;`.ta,nm]set value"{[",args,"] .ta._apply[.ta._orig[`",string[nm],"]; (",args,")]}";
 }each key .ta.FUNCS;

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
