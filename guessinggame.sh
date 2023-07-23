#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -1 | wc -l)

function guess {        
    if [[ $1 -lt $2 ]]          # if statement ...
    then
	echo "The prompt you guessed is low. Try again:"
    elif [[ $1 -gt $2 ]]
    then
	echo "The prompt you guessed is high. Try again:"
    else
	echo ""
	echo "Congratualations! You guessed right"
    fi
}

while [[ $count -ne $guess ]]
do
    read -p "Guess how many files are in the current directory? " guess
    # echo "You entered: $Guess"
    echo $(_guess $Guess $count)
    echo ""
done
