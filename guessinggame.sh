#!/usr/bin/env bash
#guessinggame.sh

gameOver=0
numberOfFiles=$(ls | wc -l)

function gameloop {
	echo "How many (non hidden) files are in the current directory?"
	read guess
	if [[ $guess -eq $numberOfFiles ]]
	then
		let "gameOver=1"
	elif [[ $guess -lt $numberOfFiles ]]
		then
		echo "Too low! Try again."
	elif [[ $guess -gt $numberOfFiles ]]
		then
		echo "Too high! Try again."
	fi
}

while [[ $gameOver -eq 0 ]]
do
	gameloop
done

echo "Thats right! Congratulations, you win!"
