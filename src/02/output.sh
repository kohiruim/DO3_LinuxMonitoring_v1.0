#!/bin/bash

function output()
{
    echo "HOSTNAME = $HOSTNAME"
    echo "TIMEZONE = $(< /etc/timezone)"
    echo "USER = $USER"
    echo "OS = $(uname) $(< /etc/issue.net)"
    echo "DATE = $(date +"%d %B %Y %T")"
    echo "UPTIME = $(uptime -p)"
    echo "UPTIME_SEC = $(cat /proc/uptime | awk '{print $1}')"
    echo "IP = $(hostname -i | awk '{print $1}')"
    echo "MASK = $( ifconfig | grep -m2 'inet '| awk '{ if (NR==2) print $4}' )"
    echo "GATEWAY = $(ip r | awk '/default/{print$3}')"
    echo "RAM_TOTAL = $( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$1 / 1024) }' ) Gb"
    echo "RAM_USED = $( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$2 / 1024) }' ) Gb"
    echo "RAM_FREE = $( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$3 / 1024) }' ) Gb"
    echo "SPACE_ROOT = $( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$2 / 1024) }' ) Mb"
    echo "SPACE_ROOT_USED = $( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$3 / 1024) }' ) Mb"
    echo "SPACE_ROOT_FREE = $( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$4 / 1024) }' ) Mb"
}
