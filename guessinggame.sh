#!/usr/bin/env bash

files=$(ls -p | grep -v / | wc -w)

echo -e "How many $(tput bold)files$(tput sgr0) are in this directory? Take a guess and find out."

while [[ ! $finished ]]
do
	read -p "Guess a number: " response

	if [[ $response -eq $files ]]
	then
		finished=True
	else
		echo "Incorrect! Guess again."
	fi
done

read -s -r -n 1 -p "$files is correct! Press any key to quit."
echo -e "$(tput sgr0)"
