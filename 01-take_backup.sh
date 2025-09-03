#!/bin/bash

SOURCE="/home/ranjan/Desktop/source"
DESTINATION="/home/ranjan/Desktop/destination"
DATE=$(date +%Y-%m-%d_%H_%M_%S)

mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE

echo "Backup completed on $DATE"


#Explanation
#• SOURCE: The directory to be backed up.
#• DESTINATION: The directory where the backup will be stored.
#• DATE: Captures the current date and time to create a unique backup folder.
#• mkdir -p $DESTINATION/$DATE: Creates the backup directory if it does not exist.
#• cp -r $SOURCE $DESTINATION/$DATE: Copies the contents of the source directory
#to the backup directory.
#• echo "Backup completed on $DATE": Outputs a message indicating the completion
#of the backup.


#Scheduling with Cron
#To run the backup script at regular intervals, use crontab -e to edit the crontab file
#and add:
#* * * * * /path/to/backup_script.sh
#This example runs the script ev
