#!/bin/bash

echo "Enter a number....."

read number

if [ $number -lt 10 ]; then
    echo "Given $number is less than 10"
elif
    [ $number -gt 10 ]; then
    echo "Given $number is greater than 10"
else
    echo "Given $number is equal to 10"
fi