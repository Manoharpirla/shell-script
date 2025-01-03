#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi
# dnf list installed mysql

# if [ $? -ne 0 ]
# then # installed
#     dnf remove mysql -y
#     if [ $? -eq 0 ]
#     then
#         echo "Removing Mysql ... FAILURE"
#         exit 1
#     else
#         echo "Removing MySQL ... SUCCESS"
#     fi
# else
#     echo "MySQL is already ... Removed"
# fi
dnf list installed git

if [ $? -eq 0 ]
then
    dnf remove git -y
    if [ $? -eq 0 ]
    then
        echo "Removin Git ... FAILURE"
        exit 1
    else
        echo "Removin Git ... SUCCESS"
    fi
else
    echo "Git is already ... INSTALLED"
fi