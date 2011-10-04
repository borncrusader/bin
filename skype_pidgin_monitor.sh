#!/bin/bash

while [ 0 ];
do
  if [ `ps -C skype | wc -l` -eq 1 ];
  then
    # some prob, restart skype!
    skype &
  elif [ `ps -C pidgin | wc -l` -eq 1 ];
  then
    # some prob, restart pidgin!
    pidgin &
  fi
  echo "waiting!"
  sleep 1m
done
