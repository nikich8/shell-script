#!/bin/bash

ID=$(id -u)

VALIDATE(){
    
    if [ $? -ne 0 ]
    then
        echo "ERROR: installaion is failed"
    else
        echo "installation success"
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
     

yum install docker -y
