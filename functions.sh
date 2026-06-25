#!/bin/bash

userid=$(id -u)

# check whether user is root or not

if [ $userid -ne 0 ]; then
    echo "Please run this script with root user"
    exit 1
fi

# Defining function

validate (){
    if  [ $1 -eq 0 ]; then
        echo "$2 software is installed ......SUCCESS"
        exit 1
    else
        echo "$2 software is installation .......FAILED"
    fi
}

# check software is already installed 

dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "software is alredy installed"
else
    echo "Installing software"
    dnf install mysql -y
    validate $? MYSQL # calling function
fi
