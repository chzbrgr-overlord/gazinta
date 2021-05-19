#!/bin/bash

env=prd


for i in $(cat cdhhost.prd.txt) ;do  
	echo -n "$i  "; 
	IP=`dig @10.6.6.34 $i +short`
	echo -n "$IP  "
	host $IP 10.6.6.34 | tail -n 1 | awk '{print $5}'
done
