#! bin/bash

# When we run a program on the command line you would be familiar with supplying arguments 
# after it to control its behaviour. For instance we could run the command 
# ls -l /etc. -l and /etc are both command line arguments to the command ls. 
# We can do similar with our bash scripts. To do this we use the variables $1 to 
# represent the first command line argument, $2 to represent the second command 
# line argument and so on. These are automatically 
# set by the system when we run our script so all we need to do is refer to them.


# Other special variables

# $0 - The name of the Bash script.
# $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
# $# - How many arguments were passed to the Bash script.
# $@ - All the arguments supplied to the Bash script.
# $? - The exit status of the most recently run process.
# $$ - The process ID of the current script.
# $USER - The username of the user running the script.
# $HOSTNAME - The hostname of the machine the script is running on.
# $SECONDS - The number of seconds since the script was started.
# $RANDOM - Returns a different random number each time is it referred to.
# $LINENO - Returns the current line number in the Bash script.