#!/bin/bash

for i in $(ls -lrtR *.* | cut -d"." -f2 | sort -u ) 
do 
   echo "----$i----\c" 
   ls -lrtR *$i 2> /dev/null | wc -l | grep -v 0
done      
exit $?
	 
