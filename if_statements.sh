#!/bin/bash

# Basic if statement
if [ $1 -gt 100 ]
then
    echo Hey that\'s a large number.
    pwd
fi


date


# Operator	    Description
# ! EXPRESSION | The EXPRESSION is false.
# -n STRING	   | The length of STRING is greater than zero.
# -z STRING	   | The lengh of STRING is zero (ie it is empty).
# STRING1 = STRING2	| STRING1 is equal to STRING2
# STRING1 != STRING2 |	STRING1 is not equal to STRING2
# INTEGER1 -eq INTEGER2	| INTEGER1 is numerically equal to INTEGER2
# INTEGER1 -gt INTEGER2	| INTEGER1 is numerically greater than INTEGER2
# INTEGER1 -lt INTEGER2	| INTEGER1 is numerically less than INTEGER2
# -d FILE |	FILE exists and is a directory.
# -e FILE |	FILE exists.
# -r FILE |	FILE exists and the read permission is granted.
# -s FILE |	FILE exists and it's size is greater than zero (ie. it is not empty).
# -w FILE |	FILE exists and the write permission is granted.
# -x FILE |	FILE exists and the execute permission is granted.


# Nested if statements
if [ $1 -gt 100 ]
then
    echo Hey that\'s a large number.

    if (( $1 % 2 == 0 ))
    then
        echo And is also an even number.
    fi
fi


# elif statements
if [ $1 -ge 18 ]
then
    echo You may go to the party.
elif [ $2 == 'yes' ]
then
    echo You may go to the party but be back before midnight.
else
    echo You may not go to the party.
fi

# and example
if [ -r $1 ] && [ -s $1 ]
then
    echo This file is useful.
fi

# or example
if [ $USER == 'bob' ] || [ $USER == 'andy' ]
then
    ls -alh
else
    ls
fi

