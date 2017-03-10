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
echo '<div style="font-family: arial; padding: 5px; text-align: center; background-color: lightgreen; border: black 5px solid; margin: auto auto; width: 960px;">' >> /home/student/Plocha/thiel125/index.html
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Current time: "$time"</strong></h1></p>	" >> /home/student/Plocha/thiel125/index.html 
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>My Ip adress: "$ip"</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html 
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Received data: "$rx"</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html 
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Sent data: "$tx"</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html 
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Member of users: "$users"</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html 
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Used memory: "$memory"B</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Disk size: "$disk"B</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Used space: "$used"B</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html
echo '<h1 style="color:red; font-size: 50px; display:inline-block">' "<p><strong>Percentage: "$procent"</strong></h1></p>" >> /home/student/Plocha/thiel125/index.html
echo "<hr>" >> /home/student/Plocha/thiel125/index.html 
