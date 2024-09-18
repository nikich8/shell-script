#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0]
then
    echo "ERROR: Please run wih root accoun"
    
else
    echo "you are root user"

fi    