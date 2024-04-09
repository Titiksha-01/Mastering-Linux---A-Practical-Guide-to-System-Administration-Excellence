#!/bin/bash
 
#CREATING THE 2 USERS 
echo "CREATING THE 1st USER...."
useradd Jane

echo "CREATING THE 2nd USER..."
useradd Jenny 
echo

echo "-------------------------------------"
echo

#DISPLAYING THE LIST OF THE USERS 
echo "THE 2 USERS ARE LISTED BELOW"
echo
tail /etc/passwd
echo 

echo "-------------------------------------"
echo

#DISPLAYING ALL THE IDs OF BOTH THE USERS 
echo "The user/group id for JANE is: $(id Jane) "
echo

echo "The user/group id for JENNY is: $(id Jenny) "
echo

echo "-------------------------------------"
echo

#CREATING THE GROUPS 
echo "CREATING THE 1st GROUP...."
groupadd Technical
echo 

echo "CREATING THE 2nd GROUP...."
groupadd Sales
echo

echo "-------------------------------------"
echo

#LISTING THE GROUPS WITH ASSOCIATE USERS
echo "The 2 groups are listed below"
echo
tail /etc/group
echo

echo "-------------------------------------"
echo

echo "Adding user-1 to group-1"
gpasswd -a James Management 
echo 

echo "Adding user-2 to group-2"
gpasswd -a Jessica Finance
echo 

echo "-------------------------------------"
echo

echo "Here is the output...."
tail /etc/group 

echo "-------------------------------------"
echo

echo "Thank you for joining ! Have a great day !"
echo
