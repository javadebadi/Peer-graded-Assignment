# This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number.

echo "How many files are in the current directory? Guess the number."


number_of_files_in_directory=$(ls |wc -w)


# function howBig takes two argument and assumes that the first number is the true number and the second number is your guess
function howBig {
if [[ $2 -gt $1 ]] 
then echo "Your guess is too big"
elif [[ $1 -gt $2 ]] 
then echo "Your guess is too low"
elif [[ $2 -eq $1 ]]
then echo "Congratulation! Your guess was correct."
fi
}

#a loop functin for the user the guess the number until it is correct
while [[ $guess -ne $number_of_files_in_directory ]]
do
read guess
howBig $number_of_files_in_directory $guess
echo "Try agian: "
done



