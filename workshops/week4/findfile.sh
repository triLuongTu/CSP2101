#!/bin/bash
read -p 'Enter the name or part name of the file you are loking for: ' reqfile
    for i in $( find ~/CSP2101 -name $reqfile\* ); do
        if [ -s "$i" ]; then
            echo "The content of $i are as follows:"
            cat $i
        else
            echo "The $i file are empty"
        fi
    done