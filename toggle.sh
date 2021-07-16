#!/bin/bash

AUX=$(ps aux | grep -i $1 | grep -v grep | grep -v $0) 
if [ -z "$AUX" ] 
then
  nohup $1 </dev/null >/dev/null 2>&1 &
else
  killall $1
fi
