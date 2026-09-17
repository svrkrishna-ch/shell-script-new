#!/bin/bash

source ./common.sh

SOURCE_DIR="/home/ec2-user/app-logs"

echo "Script started executed at: $TIMESTAMP" &>>$LOG_FILE_NAME

FILES_TO_DEL=$(find $SOURCE_DIR -name "*.log" -mtime +20)
echo "Files to be deleted are $FILES_TO_DEL"

while read -r file
do
    echo "Deleting file: $file"
    rm -rf $file
done <<< $FILES_TO_DEL
