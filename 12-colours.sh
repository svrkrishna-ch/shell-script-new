#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1-ne 0 ]
    then
        echo -e "Installing $2 ... $R FAILED"
    else
        echo -e "Installing $2 ... $G SUCCESS"
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
    echo -e "MySQL is already ... $Y INSTALLED"
fi

dnf list installed git

if [ $?-ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Git"
else
    echo -e "Git is already ... $Y INSTALLED"
fi