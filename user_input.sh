#! bin/bash

# Ask user for the input

echo "Hello, who am I talking to?"

read varname

echo "It's nice to meet you $varname"


# Two commonly used options however are -p which allows you to specify a prompt and -s which 
# makes the input silent. 
# This can make it easy to ask for a username and password combination like the example below:


read -p 'Username: ' username
read -ps 'Password: ' password

echo

echo "Thank you for logging in, $username"

# Ask for multiple input

echo 'What cars do you like?'

read car1 car2 car3 

echo "Your first car was: $car1"
echo "Your second car was: $car2"
echo "Your third car was: $car3"

# The general mechanism is that you can supply several variable names to read. 
# Read will then take your input and split it on whitespace. The first item will then 
# be assigned to the first variable name, the second item to the second variable name and so on. 
# If there are more items than variable names then the remaining items will all be added to 
# the last variable name. If there are less items than
# variable names then the remaining variable names will be set to blank or null.