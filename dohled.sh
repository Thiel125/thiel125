#!/bin/bash

time=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
users=`who | wc -l`
memory=`free | grep Mem: | awk -F " " '{print $3}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $2}'`
used=`df -h | grep /dev/sda1 | awk -F " " '{print $3}'`
procent=`df -h | grep /dev/sda1 | awk -F " " '{print $5}'

echo "<hr>" >> /home/student/Plocha/thiel125/index.html 
echo "Current time: "$time >> /home/student/Plocha/thiel125/index.html 
echo "My Ip adress: "$ip >> /home/student/Plocha/thiel125/index.html 
echo "Received data: "$rx >> /home/student/Plocha/thiel125/index.html 
echo "Sent data: "$tx >> /home/student/Plocha/thiel125/index.html 
echo "Member of users: "$users >> /home/student/Plocha/thiel125/index.html 
echo "Used memory: "$pmemory >> /home/student/Plocha/thiel125/index.html
echo "Disk size: "$disk >> /home/student/Plocha/thiel125/index.html
echo "Used space: "$used >> /home/student/Plocha/thiel125/index.html
echo "Percentage: "$procent >> /home/student/Plocha/thiel125/index.html
echo "<hr>" >> /home/student/Plocha/thiel125/index.html 
