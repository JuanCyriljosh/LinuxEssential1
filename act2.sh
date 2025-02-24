#!/bin/bash

echo "Enter your exam score: "
read num

if ! ([[ "$num" =~ ^[0-9]+$ ]]); then
    echo "Error! Please enter an integer (0-100) ONLY."
    exit 1
fi

if ! ([ "$num" -ge 0 ] && [ "$num" -le 100 ]); then
    echo "Error! Please input a valid score."
    exit 1
fi

if [ "$num" -ge 90 ]; then
    grade="A"
    echo "CONGRATS! your grade is: $grade!"
elif [ "$num" -ge 80 ]; then
    grade="B"
    echo "CONGRATS! your grade is: $grade!"
elif [ "$num" -ge 70 ]; then
    grade="C"
    echo "CONGRATS! your grade is: $grade!"
elif [ "$num" -ge 60 ]; then
    grade="D"
    echo "Nice try! your grade is: $grade!"
else 
    grade="F"
    echo "Better luck next time! your grade is: $grade!"
fi

