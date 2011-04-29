rolls=: 4 5 5 5 10 2 3 NB. 4 5 4 5 4 5 10 5 5 4 5 4 5
NB. rolls=: 7 3 4 6
tenner=: 1 j.10&=
ufs=: (tenner rolls) # rolls
fr=: 2%~# ufs
zfr=: 8*fr
zpufs=: zfr $!.0 ufs
fs=: |: (fr,2) $ ufs
strikes=: +/10=fs
spares=: (10=+/fs) - strikes
open=: (+/fs)-10*10=+/fs

NB. 3 10 $ (+/10=fs), ((10=+/fs)-+/10=fs), ((+/fs)-10*10=+/fs)

NB. wrap and shape the results
] |: (2,zfr) $ zpufs ,; 2|.zpufs
