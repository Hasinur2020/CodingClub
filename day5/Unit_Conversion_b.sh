#!/bin/bash -x
read -p "Enter First Feet: " firstNumber
read -p "Enter Second Feet :" secondNumber
#rectangularPlot = $(( $firstNumber * $secondNumber ))
#area = $(( $rectangularPlot * 25 ))
area1=$(( $firstNumber * $secondNumber * 25 ));
echo $area1;
