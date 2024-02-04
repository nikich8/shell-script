#!/bin/bash

ID=($id -u)
echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " $2  is failed"
        exit 1
    else
        echo "$2  is sucess"    
}

if [ $ID -ne 0 ]
then
    echo "ERROR: please run script with root user"
    exit 1
else
    echo "You are root user"
fi
 yum insatll mysql -y

 VALIDATE $? "installing mysql"
 yum install git -y

 VALIDATE $? "installing git"