#!/bin/bash -x

for i in 0 1 2 3 4 5 6 7 8 9
do
	#echo "looping $i";
	Array[(($i))]="$((RANDOM%1000))";
done

echo ${Array[@]}
secondGreatest=$(printf '%s\n' "${Array[@]}" | sort -n | tail -2 | head -1)
echo $secondGreatest
secondSmallest=$(printf '%s\n' "${Array[@]}" | sort -n | tail -9 | head -1)
echo $secondSmallest
