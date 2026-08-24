#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1-ne 0 ]
    then
        echo "Installing $2 ... FAILED"
    else
        echo "Installing $2 ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute the script"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo "MySQL is already ... INSTALLED"
fi

dnf list installed git

if [ $?-ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Git"
else
    echo "Git is already ... INSTALLED"
fi