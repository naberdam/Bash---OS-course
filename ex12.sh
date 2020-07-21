#!/bin/bash
#Nerya Aberdam 311416457

#get in the directory in $1
cd $1
#all the things in $1 directory sorted
DIR=$(ls | sort -V)
#counter for number of files and directory
k=1
#loop for printing the txt files
for FILE in $DIR -v
do
    #in case that $FILE is file in kind of .txt
    case $FILE in 
    *.txt)
    #print the counter using the flag -n for printing in the same line
    echo -n "$k "
    #print the txt file in same line without the location of this file
    echo -n $FILE | sed "s/.*\///"
    echo " is a file"
    #increasing the counter
    k=$[$k+1] ;;
    #end the case
    esac
done
#loop for printing the folders in this directory
for FILE in $DIR -v
do
    #if $FILE is a directory
    if [ -d "$FILE" ]; then
        #print the counter using the flag -n for printing in the same line
        echo -n "$k "
        #print the folder name in same line without the location of this file
        echo -n $FILE | sed "s/.*\///"
        echo " is a directory"
        #increasing the counter
        k=$[$k+1]
    fi  
done