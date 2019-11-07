#!/bin/bash

## Store date
DATE=`date '+%d-%m-%Y %H:%M:%S'`

## Execute update command
sudo apt update &> /dev/null

echo "Apt update executed on $DATE"

## Read current file count
cd $HOME
result=`du -chd 0`
total="${result%%G*}G"

echo "The current file count in your home directory is $total"
