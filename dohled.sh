#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
users=`who | wc -l`
pamet=`free | grep Mem: | awk -F " " '{print $3}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $2}'`
pouzito=`df -h | grep /dev/sda1 | awk -F " " '{print $3}'`
procenta=`df -h | grep /dev/sda1 | awk -F " " '{print $5}'

echo "Current time: "$cas >> /home/student/Plocha/thiel125/index.html 
echo "My Ip adress: "$ip >> /home/student/Plocha/thiel125/index.html 
echo "Received data: "$rx >> /home/student/Plocha/thiel125/index.html 
echo "Sent data: "$tx >> /home/student/Plocha/thiel125/index.html 
echo "Member of users: "$users >> /home/student/Plocha/thiel125/index.html 
echo "Used memory: "$pamet >> /home/student/Plocha/thiel125/index.html
echo "Disk size: "$disk >> /home/student/Plocha/thiel125/index.html
echo "Used space: "$pouzito >> /home/student/Plocha/thiel125/index.html
echo "Percentage: "$procenta >> /home/student/Plocha/thiel125/index.html
echo "<hr>" >> /home/student/Plocha/thiel125/index.html 
