#! /bin/bash

#mustrame todos las ips en la local network

mi_ip=$(/usr/sbin/ip addr show dev enp0s3 | grep "inet " | awk '{print $2}')
list_ip=$(fping -aqg $mi_ip)   
#eligue las mas grande
fs_n=0
  
for ip in $list_ip:
do
  if (( $ip > $fs_n )); then
    fs_n=$ip
  fi
done
#muestramela

echo $fs_n
