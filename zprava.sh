#!/bin/bash
tac /etc/passwd | head -n 28 | while read radek
do
uzivatel=`echo $radek | awk -F ":" '{print $1}'`
echo "Tak to je konec pánové" | write $uzivatel
done
