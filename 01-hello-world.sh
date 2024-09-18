#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0]
then
    echo "ERROR: Please run wih roo accoun"
else
    echo "you are roo user"

fi    