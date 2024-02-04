#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run this script with root user"
    exit 1
else
    echo "you are root user"
fi 

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR: installing mysql is failed"
    exit 1
else
    echo "installing mysql is success"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "installing git is failed"
    exit 1
else    echo "Installing git is sucess"
fi
    
