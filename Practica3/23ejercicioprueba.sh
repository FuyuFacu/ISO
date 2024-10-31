#!/bin/bash

array1=(10 20 32 1 3 5 14)
array2=(20 54 3 11 3 5 696 12 1 97)

a1=${#array1[@]}
a2=${#array2[@]}

if ((a1 > a2)); then
	min_length=$a2
else
	min_length=$a1
fi


for (( i=0; i < min_length; i++ )); do
	suma=$((array1[i] + array2[i]))
	echo "$suma"
done
