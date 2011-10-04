#!/bin/bash

pacmd list-sinks | grep "index" -A 2

if [ "$1" == "-d" ]; then
    n=1
else
    echo -n "enter sink index : "
    read n
fi

echo "setting $n as default sink"
pacmd set-default-sink "$n"
