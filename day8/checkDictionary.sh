#!/bin/bash -x

declare -A face_value
read -p "Enter how many times you want to roll a dice: " rollDiceTimes
isRoll=0;
#roll=$(( RANDOM%6+1 ))
FACE_ONE=1
FACE_TWO=2
FACE_THREE=3
FACE_FOUR=4
FAE_FIVE=5
FACE_SIX=6

while [[ isRoll -lt rollDiceTimes ]]
do
	roll=$(( RANDOM%6+1 ))
	case $roll in
		$FACE_ONE)
			face="One"
			;;
		$FACE_TWO)
			face="Two"
			;;
		$FACE_THREE)
			face="Three"
			;;
		$FACE_FOUR)
			face="Four"
			;;
		$FACE_FIVE)
			face="Five"
			;;
		$FACE_SIX)
			face="Six"
			;;
		*)
			face="Unpredictable situation"
	esac
	face_value[$face]=$roll
	echo $face
	isRoll=$(( $isRoll+1 ))
done

echo "${face_value[@]}"






# Write a program in the following steps
# a. Roll a die and find the number between 1 to 6
# b. Repeat the Die roll and find the result each time
# c. Store the result in a dictionary
# d. Repeat till any one of the number has reached 10 times
# e. Find the number that reached maximum times and the one that was for minimum times
