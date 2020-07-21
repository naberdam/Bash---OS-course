#!/bin/bash
#Nerya Aberdam 311416457

#creating new file with the lines that contains the name $1 in $2
grep -w "$1" $2 > myoutput
#printing those lines
cat myoutput
#new variable of the total balance
total=0
#loop over the file
while IFS= read -r line || [ -n "$line" ]
do
    #take the second word from line, which is the money that $1 used
    y=$(echo $line | awk '{print $2}')
    #sum the total balance
    total=$[$total+$y]
done < myoutput
#printing the total balance
echo "Total balance: " $total