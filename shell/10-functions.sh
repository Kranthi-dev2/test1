#!/bin/bash

ID=$(id -u)

VALIDAT() {
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... Failed"
        exit 1
    else
        echo "$2 ... Success"
    fi
}

if [ $ID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
   exit 1 # you can give other than o
else
   echo "You are  root user"
fi

dnf install mysql -y

VALIDATE $? "Installing Mysql"

dnf install git -y

VALIDATE $? "Installing git"
