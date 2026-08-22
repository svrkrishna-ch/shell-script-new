#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute the script"
    exit 1 #other than 0
fi

dnf install mysqll -y

# if [ $?-ne 0 ]
# then
#     echo "Installing MYSQL ... FAILED"
# else
#     echo "Installing MYSQL ... SUCCESS"
# fi

dnf install git -y