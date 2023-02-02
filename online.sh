#!/usr/bin/env bash

online=0
offline=0

for i in {1..255};
 do
 ping -c 10.93.160.160.$i
 if [ $? -eq 1 ]
then
let "offline = $offline+1";
 echo 10.93.160.$i >> offline.txt
else
let "online = $online+1";
 echo 10.93.160.$i >> online.txt
fi;
echo "offline ip are saved. On a $offline utilisateurs hors ligne"
echo "online ip are saved. On a $online utilisateurs en ligne"
done
