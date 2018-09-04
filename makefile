README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@date +%c >> README.md
	@wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	@rm README.md
