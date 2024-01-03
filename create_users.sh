#!/bin/bash

<<cmt
Develop a script that automates the process of adding or removing user accounts.
This script can take inputs such as username and password making it easier to manage user accounts.
cmt


read -p 'Enter the username:-' USER

grep "$USER" /etc/passwd

EXIT=$?
if [[ $EXIT -le 0 ]]
then
    echo -e "USER FOUND"
    userdel $USER
    echo -e "USER HAS BEEN DELETED"
else
    echo -e "Sorry !!! USER NOT FOUND"
    useradd $USER
    passwd  $USER
    echo -e "USER ADDED SUCCESSFULLY"

fi
