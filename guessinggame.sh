#!/usr/bin/env bash

files=$(ls | wc -w)

echo "How many files are in this folder? Take a guess and find out."

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
echo -e ""
