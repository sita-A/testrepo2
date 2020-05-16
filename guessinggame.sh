#!/usr/bin/env bash

function check_input(){
    files_count=$(ls |wc -l)
    while true
    do
        echo "enter your choice"
        read  number
        if ! [[ $number =~ ^[0-9]+$ ]]
        then
              echo "please enter the valid number"
        elif [ $number -lt $files_count ]
        then
              echo "The number you entered is Less then the expected number"
        elif [ $number -gt $files_count ]
        then
              echo "The number you entered is Greater then the true number"
        else
            echo " congratulations,you entered the correct number"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
check_input