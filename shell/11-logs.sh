#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="e/[31m"
G="e/[32m"
Y="e/[33m"
N="e/[0m"

LOG_FILE="/tmp/$0-$TIMESTAMP.log"

echo "Script startedd executing at $TIMESTAMP" &>> $LOG_FILE

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo -e "$R ERROR:: $2 ... Failed $N"
        exit 1
    else
        echo -e "$2 ... $G Success $N"
    fi
}

if [ $ID -ne 0 ]
then
   echo -e "$R ERROR:: Please run this script with root access $N"
   exit 1 # you can give other than o
else
   echo "You are  root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"