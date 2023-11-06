#!/bin/bash


# Basic arithmetic using let

let a=5+4
echo $a # 9

let "a = 5 + 9"
echo $a # 9


let a++
echo $a # 10

let "a = 4 * 5"
echo $a # 20


let "a = $1 + 30 "
echo $a # 30 + first command line argumen

# Basic arithmetic using expr


expr 5 + 4

expr "5 + 4"

expr 5+4

expr 5 \* $1

expr 11 % 2

a=$( expr 10 - 3 )
echo $a # 7

# Basic arithmetic using double parentheses


a=$(( 4 + 5 ))
echo $a # 9
a=$((3+5))
echo $a # 8
b=$(( a + 3 ))
echo $b # 11
b=$(( $a + 4 ))
echo $b # 12
(( b++ ))
echo $b # 13
(( b += 3 ))
echo $b # 16
a=$(( 4 * 5 ))
echo $a # 20