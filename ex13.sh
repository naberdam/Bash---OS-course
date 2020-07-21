#!/bin/bash
#Nerya Aberdam 311416457

#get in the directory in $1
cd $1;
name_of_file=$2;
#all the things in $1 directory sorted
DIR=$(ls | sort -V)
#loop in $1 directory
for FILE in $DIR
do
  #taking the name of the file without his location
  NEW_FILE=$(basename $FILE)
  #if NEW_FILE is file and it is equals to name_of_file
  if [[ (-f $NEW_FILE) && ("$NEW_FILE" == "$name_of_file") ]];
  then
    #printing the content of NEW_FILE
    cat $NEW_FILE
    #enter
    echo ""
  fi  
  #if the FILE is a folder
  if [ -d "$FILE" ]; then
	  cd $FILE
		for j in $(ls|sort) 
    do
      #if j is file and it is equals to name_of_file
			if [[ ("$j" == "$name_of_file") && (-f $j) ]]; 
      then
        #printing the content of j
				cat $j
        #enter
        echo ""
			fi
    done
    #go back to our original folder
    cd ..
  fi			   
done
