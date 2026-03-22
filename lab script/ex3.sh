#!/bin/bash

clear

echo "1. Pipes"
echo "2. Redirection"
echo "3. Tee command"
echo "Enter your choice:"
read a

case $a in
1)
    echo "Pipes command - using ls & sort command"
    echo "--------------------------------------"
    ls | sort
    ;;
2)
    echo "Redirection command"
    echo "-------------------"

    echo "Content of file1:"
    cat file1

    echo "Content of file2:"
    cat file2

    cat file1 > file2

    echo "After redirecting file1 into file2:"
    cat file2
    ;;
3)
    echo "Tee command"
    echo "-----------"

    echo "Numbers before sorting:"
    cat numbers

    cat numbers | fold -w1 | sort | tee sorted_numbers
    ;;
*)
    echo "Invalid option"
    ;;
esac
