n=:100+i.900  NB. 3 digit numbers
prod=:~.,n*/n NB. unique products
pal=:((-:|.)@:":)"0 NB. test for palindrome
answer=:>./(pal#])prod
echo answer
