#!/bin/bash
clearline="\b\033[2K\r"
command=$@

while true 
do
    eval "$command"
    sleep 2
    echo -n -e "$clearline"
done
