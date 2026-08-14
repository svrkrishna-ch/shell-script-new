#/!bin/bash

NUMBER1=$1
NUMBER2=$2
NUMBER3=$3

SUM=$(($NUMBER1+$NUMBER2+$NUMBER3))

echo "vars $1 $2 $3"

echo "All vars passed are $@"

echo "Sum of vars are $SUM"

echo "Number of vars are $#"

echo "Script name is $0"

echo "Present working directory is $PWD"

echo "Home directory is $HOME"

echo "User running the script is $USER"

echo "Process id of current script is $$"

sleep 10 &

echo "Process id of last command in background is $!"