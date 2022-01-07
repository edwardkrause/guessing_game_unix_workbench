
readme:
	touch README.md
	echo "<h3>Project Name: Guessing Game </h3>" > README.md
	echo "<h4>Coursera, The Unix Workbench</h4>\n" >> README.md
	echo "Last Make run date:" >> README.md
	date >> README.md
	echo "\nguessinggame.sh number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.MD

	


