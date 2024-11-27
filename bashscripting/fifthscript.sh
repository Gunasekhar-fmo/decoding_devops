#!/bin/bash

UP="uptime"
echo $UP 
UP = `uptime`
echo $UP
Current=$(who)
echo $Current
free_ram=`free -m | grep Mem | awk '{print $4}'`
echo $free_ram

echo "Welcome $USER on $HOSTNAME."
echo "#######################################################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')


echo "#######################################################"
echo "Available free RAM is $FREERAM MB"
echo "#######################################################"
echo "Current Load Average $LOAD"
echo "#######################################################"
echo "Free ROOT partiotion size is $ROOTFREE"

