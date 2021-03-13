#!/bin/bash

RED='\033[1;91m' # WARNINGS
YELLOW='\033[1;93m' # HIGHLIGHTS
WHITE='\033[1;97m' # LARGER FONT
LBLUE='\033[1;96m' # HIGHLIGHTS / NUMBERS ...
LGREEN='\033[1;92m' # SUCCESS
NOCOLOR='\033[0m' # DEFAULT FONT

dem=0

printf "${LGREEN} Cac node dang chay:" "\n\n"
for(( i=1; i <=50; i++ ))
do
	mix='nym-mixnode'
	nymmixnode=${mix}${i}
	if [[ ! "$(/usr/sbin/service ${nymmixnode} status)" =~ "inactive" ]]
	then
		printf "${YELLOW} ${i} ${WHITE}"
		
		dem=$(expr $dem + 1)
	fi
done
printf "\n\n"
printf "${LGREEN} Tong so node dang chay: ${RED} ${dem} ${WHITE}"
printf "\n\n"
