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