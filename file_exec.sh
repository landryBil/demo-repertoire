#!/bin/bash

count=0
for i in `ls`
do 
if [ -x $i ]
 then 
    let "count = count+1"
 else
 echo "non"
fi
done
echo "$count"
