#!/usr/bin/env bash

# function: guessinggame
# definition: Prompt the user to guess the number of files
#             in the current directory. Congratulate the 
#             user if they guess correctly, or indicate if
#             the answer was too high or too low before
#             prompting the user to guess again.

function guessinggame {
    
    # calculate the number of files in current directory
    numfiles=$(ls -p $PWD | grep -v / | wc -l)
    
    echo "How many files are in the current directory?"
    read response

    # determine if the guess is greater or lower than
    # the correct number of files
    while [[ $response -ne $numfiles ]]
    do
        if [[ $response -gt $numfiles ]]
        then
            echo "Too high."
        else
            echo "Too low."
        fi
        echo "Guess again:"
        read response
    done

    # response when the guess is correct
    if [[ $response -eq $numfiles ]]
    then
        echo "Correct. Congratulations!"
    fi
}

guessinggame
