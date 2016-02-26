#!/bin/bash


# Summing number after the third Coloumn 

# initializing the sum variable that holds final sum result.
sum=0

while IFS='' read -r line || [[ -n "$line" ]]; do
    # Choosing 3 field that contain the uid 
    arrIn=(${line//:/ })
    # Summing up the  Numbers
    sum=`expr $sum + ${arrIn[2]}`
  
done < "$1"

echo "[*] Total Sum of all UID : "
echo $sum