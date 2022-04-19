read string
len=${#string}

for((i=$len-1; i>=0; i--))
do	
	string2=$string2${string:$i:1}
done

echo $string2

reversestring=$string2
reversestring=$(echo "$reversestring" | tr "0-9a-z" "1-9a-z_"| tr "0-9A-Z" "1-9A-Z_")
echo $reversestring

len2=$(($len/2))
len3=$(($len-$len2))
string3=$(echo $string | rev)
echo "${string3:$len3:$len2}${string:$len2:$len3}"
