#!/bin/bash
read -p 'Enter Command to execute on remote machines:' COMMAND
echo "Executing $COMMAND on all the node's"
for IP in $(cat webnodeIP.txt);
do 
	echo "##########################################"
	echo "Excuting Command on $IP"
	echo "##########################################"
	ssh devops@$IP "$COMMAND;uptime;w"
done
