#!/bin/bash
for filename in $(ls)
do
	ext=${filename##*\.}
	case "$ext" in
		java) echo "$filename : Java source file"
			;;
		o)    echo "$filename : object file"
			;;
		sh)   echo "$filename : Shell script file"
			;;
		txt)  echo "$filename : Text file"
			;;
		*)    echo "$filename : Not processed"
			;;
	esac
done
