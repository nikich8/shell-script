#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started exicuting at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILED $N"
        
    else
        echo -e "$2...$G SUCEESS $N"
    fi      
}

if [ $ID -ne 0 ]
then
    echo  -e "$R ERROR: plese run script with root user $N"
    exit 1
else
    echo "you are root user"
fi

#echo "All argments paased: $@"
for package in $@
do
    yum list installed $package &>> $LOGFILE #for check packages installed or not
    if [ $? -ne 0 ] #if not installed  
    then
        yum install $package -y &>> $LOGFILE #install 
        VALIDATE $? "Installation of $package" #validate
    else
        echo -e "$package is already installed....$Y SKIPING $N"    
    fi      
done



 
    