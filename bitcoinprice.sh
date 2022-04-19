#! /bin/bash
echo "Welcome to the Bitcoin Price "
echo "if you entered wrong code so default is USD"
echo "Enter currency code to get the (PKR,USD e.t.c)"
read -p "Enter currency Code :" currencycode
currencycode=${currencycode^^} # ^^ for upper case 
data=`curl -s --location --request GET https://api.coinstats.app/public/v1/coins/bitcoin\?currency\=$currencycode |\
    grep -oE "\"price\":\s*[0-9]*?\.[0-9]*"` # | is pipeline betwwen two commands
echo "$data/= $currencycode "

# so the difference between $() or `` is that it return result of that command also known as substitution
# $varname is used to return var name ok ! 