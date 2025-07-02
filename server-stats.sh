#!/bin/bash

echo "-----------Server Performance Stats----------------"
echo

echo "CPU Usage : "
top
echo

echo "Memory Usage : "
free
echo

echo "Disk Usage : "
du
echo

echo "Top 5 processes by CPU usage : "
ps -eo ppid,pid,cmd,%cpu --sort=-%cpu | head -n 6
echo

echo "Top 5 processes by memory usage : "
ps -eo ppid,pid,cmd,%mem --sort=-%mem | head -n 6

