#!/bin/bash

declare -A node
dem=0
for(( i=1; i <=50; i++ ))
do
	mix='nym-mixnode'
	nymmixnode=${mix}${i}
	if [[ "$(/usr/sbin/service ${nymmixnode} status)" =~ "start/running" ]]
	then
		node[i]=i
		dem++
	fi
done

printf "%b\n\n\n" "${WHITE} Tong so node dang chay: ${YELLOW} ${dem} ${WHITE}"
printf "%b\n\n\n"
sleep 2 
printf "%b\n\n\n" "${WHITE} Cac node dang chay: ${YELLOW} ${node[xx]} ${WHITE}"
sleep 10
