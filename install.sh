#!/bin/bash

userid=$(id -u)

# check whether user is root or not

if [ $userid -ne 0 ]; then
    echo "Please run this script with root user"
    exit 1
fi

# check software is already installed 

dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "software is alredy installed"
else
    echo "Installing software"
    dnf install mysqlrrrrm -y

    if  [ $? -eq 0 ]; then
        echo "MYSQL software is installed ......SUCCESS"
        exit 1
    else
        echo "MYSQL software is installation .......FAILED"
    fi

fi