#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR:: Please run this script as root user"
else
   echo "Yoy are root user"
fi

dnf install mysql -y