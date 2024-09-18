#!/bin/bash

ID=$(id -u)

VALIDATE(){
    
    if [ $1 -ne 0 ]
    then
        echo "ERROR: $2.....installaion is failed"
        exit 1
    else
        echo "$2....installation success"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run with root account"
    exit 1
    
else
    echo "you are root user"

fi 

yum install git -y
VALIDATE $? "Installing GIT"     

yum install docker -y
VALIDATE $? "Installing Docker"