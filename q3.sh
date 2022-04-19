read file

wc -c < quotes.txt
wc -l < quotes.txt
wc -w < quotes.txt

awk '{ print "line no: " NR " "  "count of words: " NF }' $file

array=$(cat "$file" | tr ' ' '\n' | awk '!x[$0]++')
while read -r word;
do
	count=$(grep -o "$word" "$file" | wc -l)
	if(($count>1))
	then 
		echo "$word $count"
	fi
done <<< "$array" 

