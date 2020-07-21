#!/bin/bash
#Nerya Aberdam 311416457
numberOfLine=1
#loop for reading the line
while IFS= read -r line || [ -n "$line" ]
do
    #check if the word in the parameter $2 is in this line
    if echo "$line" | grep -q -w $2
    then
        #first of all we print the number of line, and we use the flag -n to printing in the same line
        echo -n $numberOfLine
        #space in the same line
        echo -n " "
        #printing in the same line the number of words in the line in the file
        echo $line | wc -w
    fi
    #increasing the number of lines
    numberOfLine=$[$numberOfLine+1]
done < $1   