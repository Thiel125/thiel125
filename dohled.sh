#!/bin/bash

time=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
users=`who | wc -l`
memory=`free | grep Mem: | awk -F " " '{print $3}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $2}'`
used=`df -h | grep /dev/sda1 | awk -F " " '{print $3}'`
procent=`df -h | grep /dev/sda1 | awk -F " " '{print $5}'`

echo "<hr>" >> /home/student/Plocha/thiel125/index.html 
echo '<div style="font-family: arial; padding: 5px; text-align: center; background-colour: powderblue;">
echo "<p>Current time: "$time"</p>" >> /home/student/Plocha/thiel125/index.html 
echo "<p>My Ip adress: "$ip"</p>" >> /home/student/Plocha/thiel125/index.html 
echo "<p>Received data: "$rx"</p>" >> /home/student/Plocha/thiel125/index.html 
echo "<p>Sent data: "$tx"</p>" >> /home/student/Plocha/thiel125/index.html 
echo "<p>Member of users: "$users"</p>" >> /home/student/Plocha/thiel125/index.html 
echo "<p>Used memory: "$memory"</p>" >> /home/student/Plocha/thiel125/index.html
echo "<p>Disk size: "$disk"</p>" >> /home/student/Plocha/thiel125/index.html
echo "<p>Used space: "$used"</p>" >> /home/student/Plocha/thiel125/index.html
echo "<p>Percentage: "$procent"</p>" >> /home/student/Plocha/thiel125/index.html
echo "<hr>" >> /home/student/Plocha/thiel125/index.html 
