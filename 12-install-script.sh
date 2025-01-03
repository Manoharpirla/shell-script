#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi
 FILE=$(dnf list mysql-8.0.36-1.el9_3.x86_64)

 echo "mysql service version: $FILE"

if [ $FILE -eq 0 ]
then # installed
    dnf remove mysql-8.0.36-1.el9_3.x86_64 -y
    echo "Removing MySQL ... SUCCESS"
    else
    echo "MySQL is already ... Removed"
    fi
FILE2=$(dnf list git-2.43.5-1.el9_4.x86_64)

echo "Git version : $FILE2"

if [ $? -ne 0 ]
then
    dnf remove git-2.43.5-1.el9_4.x86_64 -y
    if [ $? -ne 0 ]
    then
        echo "Removing Git ... FAILURE"
        exit 1
    else
        echo "Removing Git ... SUCCESS"
    fi
else
    echo "Git is already ... Removed"
fi