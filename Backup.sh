#!/bin/bash

#Path: /home/Munib/Services

#Reading the config file

. /opt/Services/config.sh

#Backup files
rsync -r ${SOURCE_DIR} backup_munib@${ip}:$HOME -e "ssh -i /home/Munib/.ssh/backserver_key -o StrictHostKeyChecking=no"
