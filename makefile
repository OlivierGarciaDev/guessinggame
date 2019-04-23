README.md: guessinggame.sh
	touch README.md
	echo "# Guessingame project" > README.md
	echo "Make was run at: `date`" >> README.md
	echo "The number of lines of code contained in guessinggame.sh is: `wc -l guessinggame.sh | cut -d ' ' -f 1`" >> README.md
