#!/bin/bash -x
read -p "Enter A Year :  " year
if [ $((year % 100)) -eq 0 ]
then
	if [ $((year % 400)) -eq 0 ]
	then
		echo $year is a Leap Year;
	else
		echo $year is Not a Leap Year;
	fi
elif [ $((year % 4)) -eq 0 ]
then
	echo $year is a Leap Year;
else
	echo $year is Not a Leap Year;
fi

