#!/bin/bash


# Basic function


print_something () {
echo Hello I am a function
}
print_something
print_something


# Passing arguments to a function
print_something () {
echo Hello $1
}
print_something Mars
print_something Jupiter


# Setting a return status for a function
print_something () {
echo Hello $1
return 5
}
print_something Mars
print_something Jupiter
echo The previous function has a return value of $?


# Experimenting with variable scope
var_change () {
local var1='local 1'
echo Inside function: var1 is $var1 : var2 is $var2
var1='changed again'
var2='2 changed again'
}
var1='global 1'
var2='global 2'
echo Before function call: var1 is $var1 : var2 is $var2
var_change
echo After function call: var1 is $var1 : var2 is $var2