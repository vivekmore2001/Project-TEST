#!/bin/bash

<< cmt
Develop a script that checks the disk usage of / and send the email alerts if it is exceeds the threshold.
 (75%)
cmt


DISK=`df -h / | grep -v Filesystem | awk '{print $5}' | tr -d % `
THRESHOLD="75"
EMAIL_ID="vivekmore1992@gmail.com"

if [[ $DISK -ge $THRESHOLD ]]
then
      echo -e "Disk Usage is high"
      echo -e "Send alert"
      echo -e "Memory usage is above the threshold: $PERCENTAGE" | mail -s "memory usage alert" $EMAIL_ID
else
      echo -e "Disk is under threshold"
fi            
