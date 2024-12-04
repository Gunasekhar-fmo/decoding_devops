#!/bin/bash

# This script prints system infor 
echo "welcome to bash script"
echo 

#Checking sytem uptime
echo "The uptime of the system is:"
uptime 

#checking memeory utilization 
echo "Memeory Utilization"
free -m

#chekcing system disk utilization 
echo "Disk Utilization"
df -h 
