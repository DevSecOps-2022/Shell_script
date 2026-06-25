#!/bin/bash

userid=$(id -u)
LOG_DIR=/var/log/shell-script
LOG_FILE="$LOG_DIR/$0.log"

# check whether user is root or not

if [ $userid -ne 0 ]; then
    echo "Please run this script with root user"
    exit 1
fi

# Defining function

validate (){
    if  [ $1 -eq 0 ]; then
        echo "$2 software is installed ......SUCCESS" | tee -a $LOG_FILE
        exit 1
    else
        echo "$2 software is installation .......FAILED" | tee -a $LOG_FILE
    fi
}

# check software is already installed 

dnf list installed mysql &>> $LOG_FILE

if [ $? -eq 0 ]; then
    echo "software is alredy installed" | tee -a $LOG_FILE
else
    echo "Installing software"
    dnf install mysql -y &>> $LOG_FILE
    validate $? MYSQL # calling function
fi
