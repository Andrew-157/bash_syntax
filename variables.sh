#! bin/bash

# Setting variables

# Set variable
variable=Hello

# Access variable value
echo $variable


# Quotes

# When we enclose our content in quotes we are indicating to Bash that 
# the contents should be considered as a single item. 
# You may use single quotes ( ' ) or double quotes ( " ).

# Single quotes will treat every character literally.
# Double quotes will allow you to do substitution 
# (that is include variables within the setting of the value).


myvar='Hello World'
echo $myvar # Hello World

newvar="More $myvar" 
echo $newvar # More Hello World

newvar='More $myvar'
echo $newvar # More $myvar


# Command Substitution

# Command substitution allows us to take the output of a command or program 
# (what would normally be printed to the screen) and save it as the value of a variable. 
# To do this we place it within brackets, preceded by a $ sign.

myvar=$( ls ) # For ex(depending on files in your root dir): bin boot dev etc home lib lib64 lost+found media mnt opt proc root run sbin srv sys tmp usr var

# If the output goes over several lines then the newlines are 
# simply removed and all the output ends up on a single line.

# Exporting Variables

# Use export keyword to export variables

var1=foo

export var1
./file2.sh # Now variable var1 is available in the running file2.sh script


# Exporting variables is a one way process. The original process may pass variables over to the new process but anything that process 
# does with the copy of the variables has no impact on the original variables.


# Bash accomodates piping and redirection by way of special files. Each process gets 
# it's own set of files (one for STDIN, STDOUT and STDERR respectively) and they are linked when 
# piping or redirection is invoked. Each process gets the following files:

    # STDIN - /proc/<processID>/fd/0
    # STDOUT - /proc/<processID>/fd/1
    # STDERR - /proc/<processID>/fd/2


# To make life more convenient the system creates some shortcuts for us:

#     STDIN - /dev/stdin or /proc/self/fd/0
#     STDOUT - /dev/stdout or /proc/self/fd/1
#     STDERR - /dev/stderr or /proc/self/fd/2

# fd in the paths above stands for file descriptor.

# So if we would like to make our script able to process data that is piped to it all we 
# need to do is read the relevant file. 
# All of the files mentioned above behave like normal files.

# File report.sh

#!/bin/bash
# A basic summary of my sales report
echo Here is a summary of the sales data:
echo ====================================
echo
cat /dev/stdin | cut -d' ' -f 2,3 | sort

# So, if we have file salesdata.txt with the following content:
Fred apples 20 November 4
Susy oranges 5 November 7
Mark watermelons 12 November 10
Terry peaches 7 November 15

# We can call:
cat salesdata.txt | ./report.sh

# The output:

Here is a summary of the sales data:
====================================
apples 20
oranges 5
peaches 7
watermelons 12