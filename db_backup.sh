#!/bin/sh
DATE=`date +%m%d%y`
DESTINATION=/db_backups/$DATE
mkdir $DESTINATION
mongodump -h <your_database_host> -d <your_database_name> -u <username> -p <password> -o $DESTINATION
