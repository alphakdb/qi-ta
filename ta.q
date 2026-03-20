// TA-Lib wrapper

// kdb+ appends .so; library must be in the same directory or on $QHOME path
.ta.LIB:` sv .qi.pkgs.ta,{r,$[`mac=r:lower[x].qi[x]?1b;`$system"uname -m";()]}[`MAC`LIN`WIN],`ta_wrap;

// MAType constants matching ta_defs.h TA_MAType enum
.ta.MA:`sma`ema`wma`dema`tema`trima`kama`mama`t3!til 9;

// ---------------------------------------------------------------------------
// Overlap Studies
// ---------------------------------------------------------------------------
.ta.sma       :.ta.LIB 2:(`ta_sma;        2);  // prices; period
.ta.ema       :.ta.LIB 2:(`ta_ema;        2);  // prices; period
.ta.dema      :.ta.LIB 2:(`ta_dema;       2);  // prices; period
.ta.tema      :.ta.LIB 2:(`ta_tema;       2);  // prices; period
.ta.wma       :.ta.LIB 2:(`ta_wma;        2);  // prices; period
.ta.trima     :.ta.LIB 2:(`ta_trima;      2);  // prices; period
.ta.kama      :.ta.LIB 2:(`ta_kama;       2);  // prices; period
.ta.t3        :.ta.LIB 2:(`ta_t3;         3);  // prices; period; vfactor
.ta.ma        :.ta.LIB 2:(`ta_ma;         3);  // prices; period; matype (.ta.MA`sma etc)
.ta.midpoint  :.ta.LIB 2:(`ta_midpoint;   2);  // prices; period
.ta.midprice  :.ta.LIB 2:(`ta_midprice;   3);  // high; low; period
.ta.sar       :.ta.LIB 2:(`ta_sar;        4);  // high; low; accel; max
.ta.mama      :.ta.LIB 2:(`ta_mama;       3);  // prices; fastlimit; slowlimit -> `mama`fama
.ta.ht_trendline:.ta.LIB 2:(`ta_ht_trendline;1); // prices
.ta.bbands    :.ta.LIB 2:(`ta_bbands;     5);  // prices; period; nbDevUp; nbDevDn; matype -> `upper`mid`lower

// ---------------------------------------------------------------------------
// Momentum Indicators
// ---------------------------------------------------------------------------
.ta.rsi       :.ta.LIB 2:(`ta_rsi;        2);  // prices; period
.ta.mom       :.ta.LIB 2:(`ta_mom;        2);  // prices; period
.ta.roc       :.ta.LIB 2:(`ta_roc;        2);  // prices; period
.ta.cmo       :.ta.LIB 2:(`ta_cmo;        2);  // prices; period
.ta.trix      :.ta.LIB 2:(`ta_trix;       2);  // prices; period
.ta.apo       :.ta.LIB 2:(`ta_apo;        4);  // prices; fast; slow; matype
.ta.ppo       :.ta.LIB 2:(`ta_ppo;        4);  // prices; fast; slow; matype
.ta.macd      :.ta.LIB 2:(`ta_macd;       4);  // prices; fast; slow; signal -> `macd`signal`hist
.ta.macdfix   :.ta.LIB 2:(`ta_macdfix;    2);  // prices; signal -> `macd`signal`hist
.ta.adx       :.ta.LIB 2:(`ta_adx;        4);  // high; low; close; period
.ta.adxr      :.ta.LIB 2:(`ta_adxr;       4);  // high; low; close; period
.ta.dx        :.ta.LIB 2:(`ta_dx;         4);  // high; low; close; period
.ta.aroon     :.ta.LIB 2:(`ta_aroon;      3);  // high; low; period -> `down`up  (aroon down/up lines)
.ta.aroonosc  :.ta.LIB 2:(`ta_aroonosc;   3);  // high; low; period
.ta.cci       :.ta.LIB 2:(`ta_cci;        4);  // high; low; close; period
.ta.willr     :.ta.LIB 2:(`ta_willr;      4);  // high; low; close; period
.ta.minus_di  :.ta.LIB 2:(`ta_minus_di;   4);  // high; low; close; period
.ta.plus_di   :.ta.LIB 2:(`ta_plus_di;    4);  // high; low; close; period
.ta.minus_dm  :.ta.LIB 2:(`ta_minus_dm;   3);  // high; low; period
.ta.plus_dm   :.ta.LIB 2:(`ta_plus_dm;    3);  // high; low; period
.ta.stoch     :.ta.LIB 2:(`ta_stoch;      8);  // high; low; close; fastk; slowk; slowkma; slowd; slowdma -> `slowk`slowd
.ta.stochf    :.ta.LIB 2:(`ta_stochf;     6);  // high; low; close; fastk; fastd; fastdma -> `fastk`fastd
.ta.stochrsi  :.ta.LIB 2:(`ta_stochrsi;   5);  // prices; period; fastk; fastd; fastdma -> `fastk`fastd
.ta.ultosc    :.ta.LIB 2:(`ta_ultosc;     6);  // high; low; close; p1; p2; p3
.ta.mfi       :.ta.LIB 2:(`ta_mfi;        5);  // high; low; close; volume; period
.ta.bop       :.ta.LIB 2:(`ta_bop;        4);  // open; high; low; close

// ---------------------------------------------------------------------------
// Volatility Indicators
// ---------------------------------------------------------------------------
.ta.atr       :.ta.LIB 2:(`ta_atr;        4);  // high; low; close; period
.ta.natr      :.ta.LIB 2:(`ta_natr;       4);  // high; low; close; period
.ta.trange    :.ta.LIB 2:(`ta_trange;     3);  // high; low; close

// ---------------------------------------------------------------------------
// Statistic Functions
// ---------------------------------------------------------------------------
.ta.stddev    :.ta.LIB 2:(`ta_stddev;     3);  // prices; period; nbdev
.ta.var       :.ta.LIB 2:(`ta_var;        3);  // prices; period; nbdev
.ta.beta      :.ta.LIB 2:(`ta_beta;       3);  // series0; series1; period
.ta.correl    :.ta.LIB 2:(`ta_correl;     3);  // series0; series1; period
.ta.linearreg          :.ta.LIB 2:(`ta_linearreg;           2);  // prices; period
.ta.linearreg_slope    :.ta.LIB 2:(`ta_linearreg_slope;     2);  // prices; period
.ta.linearreg_intercept:.ta.LIB 2:(`ta_linearreg_intercept; 2);  // prices; period
.ta.linearreg_angle    :.ta.LIB 2:(`ta_linearreg_angle;     2);  // prices; period
.ta.tsf                :.ta.LIB 2:(`ta_tsf;                 2);  // prices; period

// ---------------------------------------------------------------------------
// Volume Indicators
// ---------------------------------------------------------------------------
.ta.obv       :.ta.LIB 2:(`ta_obv;        2);  // close; volume
.ta.ad        :.ta.LIB 2:(`ta_ad;         4);  // high; low; close; volume
.ta.adosc     :.ta.LIB 2:(`ta_adosc;      6);  // high; low; close; volume; fast; slow

// ---------------------------------------------------------------------------
// Price Transform
// ---------------------------------------------------------------------------
.ta.avgprice  :.ta.LIB 2:(`ta_avgprice;   4);  // open; high; low; close
.ta.medprice  :.ta.LIB 2:(`ta_medprice;   2);  // high; low
.ta.typprice  :.ta.LIB 2:(`ta_typprice;   3);  // high; low; close
.ta.wclprice  :.ta.LIB 2:(`ta_wclprice;   3);  // high; low; close

// ---------------------------------------------------------------------------
// Hilbert Transform
// ---------------------------------------------------------------------------
.ta.ht_dcperiod:.ta.LIB 2:(`ta_ht_dcperiod;1); // prices
.ta.ht_dcphase :.ta.LIB 2:(`ta_ht_dcphase; 1); // prices
.ta.ht_phasor  :.ta.LIB 2:(`ta_ht_phasor;  1); // prices -> `inphase`quadrature
.ta.ht_sine    :.ta.LIB 2:(`ta_ht_sine;    1); // prices -> `sine`leadsine

// ---------------------------------------------------------------------------
// Math Operators
// ---------------------------------------------------------------------------
.ta.add        :.ta.LIB 2:(`ta_add;  2);  // series0; series1
.ta.sub        :.ta.LIB 2:(`ta_sub;  2);  // series0; series1
.ta.mult       :.ta.LIB 2:(`ta_mult; 2);  // series0; series1
.ta.div        :.ta.LIB 2:(`ta_div;  2);  // series0; series1

// ---------------------------------------------------------------------------
// Math Transform
// ---------------------------------------------------------------------------
.ta.acos       :.ta.LIB 2:(`ta_acos;  1);
.ta.asin       :.ta.LIB 2:(`ta_asin;  1);
.ta.atan       :.ta.LIB 2:(`ta_atan;  1);
.ta.ceil       :.ta.LIB 2:(`ta_ceil;  1);
.ta.cos        :.ta.LIB 2:(`ta_cos;   1);
.ta.exp        :.ta.LIB 2:(`ta_exp;   1);
.ta.floor      :.ta.LIB 2:(`ta_floor; 1);
.ta.ln         :.ta.LIB 2:(`ta_ln;    1);
.ta.log10      :.ta.LIB 2:(`ta_log10; 1);
.ta.sin        :.ta.LIB 2:(`ta_sin;   1);
.ta.sqrt       :.ta.LIB 2:(`ta_sqrt;  1);
.ta.tan        :.ta.LIB 2:(`ta_tan;   1);

// ---------------------------------------------------------------------------
// Candlestick Patterns
// Returns int vector: 100=bullish, -100=bearish, 0=no pattern
// All take open; high; low; close (float vectors)
// ---------------------------------------------------------------------------
.ta.cdl.2crows          :.ta.LIB 2:(`ta_cdl_2crows;          4);
.ta.cdl.3blackcrows     :.ta.LIB 2:(`ta_cdl_3blackcrows;     4);
.ta.cdl.3inside         :.ta.LIB 2:(`ta_cdl_3inside;         4);
.ta.cdl.3linestrike     :.ta.LIB 2:(`ta_cdl_3linestrike;     4);
.ta.cdl.3outside        :.ta.LIB 2:(`ta_cdl_3outside;        4);
.ta.cdl.3starsinsouth   :.ta.LIB 2:(`ta_cdl_3starsinsouth;   4);
.ta.cdl.3whitesoldiers  :.ta.LIB 2:(`ta_cdl_3whitesoldiers;  4);
.ta.cdl.advanceblock    :.ta.LIB 2:(`ta_cdl_advanceblock;    4);
.ta.cdl.belthold        :.ta.LIB 2:(`ta_cdl_belthold;        4);
.ta.cdl.breakaway       :.ta.LIB 2:(`ta_cdl_breakaway;       4);
.ta.cdl.closingmarubozu :.ta.LIB 2:(`ta_cdl_closingmarubozu; 4);
.ta.cdl.concealbabyswall:.ta.LIB 2:(`ta_cdl_concealbabyswall;4);
.ta.cdl.counterattack   :.ta.LIB 2:(`ta_cdl_counterattack;   4);
.ta.cdl.doji            :.ta.LIB 2:(`ta_cdl_doji;            4);
.ta.cdl.dojistar        :.ta.LIB 2:(`ta_cdl_dojistar;        4);
.ta.cdl.dragonflydoji   :.ta.LIB 2:(`ta_cdl_dragonflydoji;   4);
.ta.cdl.engulfing       :.ta.LIB 2:(`ta_cdl_engulfing;       4);
.ta.cdl.gapsidesidewhite:.ta.LIB 2:(`ta_cdl_gapsidesidewhite;4);
.ta.cdl.gravestonedoji  :.ta.LIB 2:(`ta_cdl_gravestonedoji;  4);
.ta.cdl.hammer          :.ta.LIB 2:(`ta_cdl_hammer;          4);
.ta.cdl.hangingman      :.ta.LIB 2:(`ta_cdl_hangingman;      4);
.ta.cdl.harami          :.ta.LIB 2:(`ta_cdl_harami;          4);
.ta.cdl.haramicross     :.ta.LIB 2:(`ta_cdl_haramicross;     4);
.ta.cdl.highwave        :.ta.LIB 2:(`ta_cdl_highwave;        4);
.ta.cdl.hikkake         :.ta.LIB 2:(`ta_cdl_hikkake;         4);
.ta.cdl.hikkakemod      :.ta.LIB 2:(`ta_cdl_hikkakemod;      4);
.ta.cdl.homingpigeon    :.ta.LIB 2:(`ta_cdl_homingpigeon;    4);
.ta.cdl.identical3crows :.ta.LIB 2:(`ta_cdl_identical3crows; 4);
.ta.cdl.inneck          :.ta.LIB 2:(`ta_cdl_inneck;          4);
.ta.cdl.invertedhammer  :.ta.LIB 2:(`ta_cdl_invertedhammer;  4);
.ta.cdl.kicking         :.ta.LIB 2:(`ta_cdl_kicking;         4);
.ta.cdl.kickingbylength :.ta.LIB 2:(`ta_cdl_kickingbylength; 4);
.ta.cdl.ladderbottom    :.ta.LIB 2:(`ta_cdl_ladderbottom;    4);
.ta.cdl.longleggeddoji  :.ta.LIB 2:(`ta_cdl_longleggeddoji;  4);
.ta.cdl.longline        :.ta.LIB 2:(`ta_cdl_longline;        4);
.ta.cdl.marubozu        :.ta.LIB 2:(`ta_cdl_marubozu;        4);
.ta.cdl.matchinglow     :.ta.LIB 2:(`ta_cdl_matchinglow;     4);
.ta.cdl.onneck          :.ta.LIB 2:(`ta_cdl_onneck;          4);
.ta.cdl.piercing        :.ta.LIB 2:(`ta_cdl_piercing;        4);
.ta.cdl.rickshawman     :.ta.LIB 2:(`ta_cdl_rickshawman;     4);
.ta.cdl.risefall3methods:.ta.LIB 2:(`ta_cdl_risefall3methods;4);
.ta.cdl.separatinglines :.ta.LIB 2:(`ta_cdl_separatinglines; 4);
.ta.cdl.shootingstar    :.ta.LIB 2:(`ta_cdl_shootingstar;    4);
.ta.cdl.shortline       :.ta.LIB 2:(`ta_cdl_shortline;       4);
.ta.cdl.spinningtop     :.ta.LIB 2:(`ta_cdl_spinningtop;     4);
.ta.cdl.stalledpattern  :.ta.LIB 2:(`ta_cdl_stalledpattern;  4);
.ta.cdl.sticksandwich   :.ta.LIB 2:(`ta_cdl_sticksandwich;   4);
.ta.cdl.takuri          :.ta.LIB 2:(`ta_cdl_takuri;          4);
.ta.cdl.tasukigap       :.ta.LIB 2:(`ta_cdl_tasukigap;       4);
.ta.cdl.thrusting       :.ta.LIB 2:(`ta_cdl_thrusting;       4);
.ta.cdl.tristar         :.ta.LIB 2:(`ta_cdl_tristar;         4);
.ta.cdl.unique3river    :.ta.LIB 2:(`ta_cdl_unique3river;    4);
.ta.cdl.upsidegap2crows :.ta.LIB 2:(`ta_cdl_upsidegap2crows; 4);
.ta.cdl.xsidegap3methods:.ta.LIB 2:(`ta_cdl_xsidegap3methods;4);
// Patterns with penetration parameter (open;high;low;close;penetration)
.ta.cdl.abandonedbaby   :.ta.LIB 2:(`ta_cdl_abandonedbaby;   5);
.ta.cdl.darkcloudcover  :.ta.LIB 2:(`ta_cdl_darkcloudcover;  5);
.ta.cdl.eveningdojistar :.ta.LIB 2:(`ta_cdl_eveningdojistar; 5);
.ta.cdl.eveningstar     :.ta.LIB 2:(`ta_cdl_eveningstar;     5);
.ta.cdl.mathold         :.ta.LIB 2:(`ta_cdl_mathold;         5);
.ta.cdl.morningdojistar :.ta.LIB 2:(`ta_cdl_morningdojistar; 5);
.ta.cdl.morningstar     :.ta.LIB 2:(`ta_cdl_morningstar;     5);

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
