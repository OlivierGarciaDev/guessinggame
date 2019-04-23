#!/bin/bash

n_lines=$(ls | wc -w)
response=0

function test {
    if [[ response -lt n_lines  ]]
    then
        local result="Your guess was too low"
    elif [[ response -gt n_lines  ]]
    then
        local result="Your guess was too high"
    else
        local result="CONGRATULATIONS !!!"
    fi
    echo $result
}

while [[ response -ne n_lines ]]
do
    echo "Guess how many files are in the current directory !"
    echo "Write the number of files, then press 'Enter':"
    read response
    clear
    echo "$(test)"
    echo ""
done

