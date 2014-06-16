#!/bin/bash

# =======================
# FLOW CONTROL
# =======================

# -------------
# IF
# -------------

# Simple If
is_earth_round=true
if [[ "$is_earth_round" = true ]]; then
	echo "Earth is indeed round";
fi

# If - Else
echo "=If-Else="
if [[ "$is_earth_round" = true ]]; then
	echo "Earth is indeed round";
else
	echo "Earth is flat"
fi

# If - ElseIf
echo "=If-ElseIf="
if [[ "$is_earth_round" = true ]]; then
	echo 'Earth is indeed round';
elif [[ "$is_earth_round" = false ]]; then
	echo 'Earth is flat'
fi

# -------------
# WHILE
# -------------
echo
echo "=Running While loop 3 times="
number=0
while [[ $number -lt 3 ]]; do
	echo "Number is $number"
	number=$((number+1))
done

# -------------
# UNTIL
# -------------
echo
echo "=Running Until loop 3 times="
number=0
until [[ $number -gt 3 ]]; do
	echo "Number is $number"
	number=$((number+1))
done


