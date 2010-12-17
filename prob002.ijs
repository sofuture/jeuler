NB. do_fib=: 3 : 'y,{.rev+{.b=:{:rev=:|.y'
NB. fib_n=: 3 : 'if. 1<y do. (y-2) +&fib_n (y-1) else. y end.' M.

fibn=: (-&2 +&$: -&1) ^: (1&<) M.
echo +/fibn"0 I.0=2|]fibn"0 i.34
