#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date -%F-%H-%S-%M)
LOGFILE="/tmp/$0-$TIMESTAPM.log"

if [ $ID -ne 0]
then
    echo "ERROR: please run with root account"
    exit 1
else
    echo "you are root user"

fi    
