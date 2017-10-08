#!/usr/bin/env bash
# File: guessinggame.sh

dirarray=($(ls -d */))
dircount=${#dirarray[@]}
dirguess=0

function checkguess {
    # Usage of an if statement
    if [[ $1 -lt $2 ]]
    then
    echo "echo Too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo Too high"
    fi
}

# Usage of a loop
while [ $dirguess -ne $dircount ]
do
echo "Guess the number of directories!"
# Collecting user response
read dirguess

$(checkguess $dirguess $dircount)

done
echo "You got it right!  Congrats!"
