#!/bin/bash

declare -A node
dem=0

printf "%b\n\n\n" "${WHITE} Cac node dang chay:"
for(( i=1; i <=50; i++ ))
do
	mix='nym-mixnode'
	nymmixnode=${mix}${i}
	if [[ ! "$(/usr/sbin/service ${nymmixnode} status)" =~ "inactive" ]]
	then
		printf "%b\n\n\n" "${YELLOW} ${i} ${WHITE}"
		dem=$(expr $dem + 1)
	fi
done

printf "%b\n\n\n" "${WHITE} Tong so node dang chay: ${YELLOW} ${dem} ${WHITE}"
