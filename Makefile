README.md: guessinggame.sh
	touch README.md
	echo -n "# Title: " > README.md
	ls *.sh >> README.md
	echo -n "- Made: " >> README.md
	date >> README.md
	echo -n "- Lines of Code: " >> README.md
	wc -l guessinggame.sh | grep -o "[0-9]." >> README.md
	echo "### About: " >> README.md
	echo "This is the first peer reviewed assignment for "The Unix Workbench" Course on Coursera. The bash script is a simple guessing game that asks the user to guess the number of non hidden files in the current directory. It demonstrates the programming concepts of input/output, variables, functions, conditionals and flow control." >> README.md
