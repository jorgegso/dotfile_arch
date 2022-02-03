#!/bin/sh
echo "%{F#FF0289}  %{F#ffffff}$(/usr/sbin/ip addr show dev enp0s3 | grep "inet " | awk '{print $2}')%{u-}"

