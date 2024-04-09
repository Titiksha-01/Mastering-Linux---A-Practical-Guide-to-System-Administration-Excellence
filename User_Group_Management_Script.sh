#!/bin/bash
 
#CREATING THE 2 USERS - GETTING INPUT FROM USER
echo "GIVE THE NAME OF USER-1:  "
read user1
echo "CREATING THE 1st USER...."
useradd $user1
echo

echo "GIVE THE NAME OF USER-2:  "
read user2
echo "CREATING THE 2nd USER..."
useradd $user2 
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
echo "The user/group id for $user1 is: $(id $user1) "
echo

echo "The user/group id for $user2 is: $(id $user2) "
echo

echo "-------------------------------------"
echo

#CREATING THE GROUPS 
echo "GIVE THE NAME OF THE GROUP-1 :  "
read group1
echo "CREATING THE 1st GROUP...."
groupadd $group1
echo 

echo "GIVE THE NAME OF THE GROUP-2 :  "
read group2
echo "CREATING THE 2nd GROUP...."
groupadd $group2
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

#ADDING USERS TO THE GROUP
echo "ENTER THE USER YOU WANT TO ADD IN THE GROUP-1:   "
read username1

if [[ $username1 == $user1 ]];
then 
        echo "ADDING $username1 to $group1 ..."
        gpasswd -a $username1 $group1
elif [[ $username1 == $user2 ]];
then 
        echo "ADDING $username1 to $group1..."
        gpasswd -a $user2 $group1
fi 

echo "ENETR THE USER YOU WANT TO ADD IN THE GROUP-2:  "
read username2
if [[ $username2 == $user1 ]];
then
        echo "ADDING $username2 to $group2 ..."
        gpasswd -a $username2 $group2
elif [[ $username2 == $user2 ]];
then
        echo "ADDING $username2 to $group2..."
        gpasswd -a $username2 $group2
 fi

echo 
echo "-------------------------------------"
echo

echo "Here is the output...."
tail /etc/group

echo "-------------------------------------"
echo

echo "Thank you for joining ! Have a great day !"
echo
