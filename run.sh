#!/bin/bash

while read line
do
	export "CI_TEACHER_ACCOUNT=$line"
	for VARIABLE in {1..9}
	do
		echo -e "$CI_TEACHER_ACCOUNT $VARIABLE"
		npm run -s start && sleep 5 && break
		sleep 1
	done
done < account.txt
