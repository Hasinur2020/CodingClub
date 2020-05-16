#!/bin/bash -x

function myFunc() {
	echo $1;
}
result="$( myFunc $((RANDOM%2)) )"
#result="$( myFunc 1 )"
if [ $result -eq 1 ]
then
	echo "success";
else
	echo "failure";
fi
