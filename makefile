
README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Guessing Game" > README.md
	echo "## Date: " >> README.md
	date >> README.md
	echo "## Number of lines in the guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
