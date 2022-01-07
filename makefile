
readme:
	touch README.md
	echo "<h3>Project Name: Guessing Game </h3)" > README.md
	echo "<h4>Coursera, The Unix Workbench</h4>" >> README.md
	echo "" >> README.md
	echo "Last Make run date:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains the following lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.MD

	


