#!/usr/bin/env bash

files=$(ls -p | grep -v / | wc -w)

function guess {
	read -p "Guess a number: " response

        if [[ $response -eq $files ]]
        then
                finished=True
        elif [[ $response -gt $files ]]
	then
                echo "Incorrect! $response is too high! Guess again."
	elif [[ $response -lt $files ]]
	then
                echo "Incorrect! $response is too low! Guess again."
        fi
}

echo -e "How many $(tput bold)files$(tput sgr0) are in this directory? Take a guess and find out."

while [[ ! $finished ]]
do
	guess
done

read -s -r -n 1 -p "Correct! There are $files files in this directory. Press any key to quit."
echo -e "$(tput sgr0)"
