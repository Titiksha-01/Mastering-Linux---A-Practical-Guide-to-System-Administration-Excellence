#!/bin/bash 

#ADDING THE HTTP SERVER INTO FIREWALL
echo "CONFIGURING THE WEB SERVER IN FIREWALL"
echo
firewall-cmd --zone=public --permanent --add-port=80/tcp
firewall-cmd --zone=public --permanent --add-service=http

echo "-----------------------------------------"
echo 

#RELAODING THE FIREWALL AFTER ADDING THE HTTP SERVER 
echo "REBOOTING THE FIREWALL"
firewall-cmd --reload
echo

echo "-----------------------------------------"
echo 

#ADDING THE FTP SERVER INTO FIREWALL
echo "CONFIGURING THE FTP SERVER IN FIREWALL"
echo
firewall-cmd --zone=public --permanent --add-port=22/tcp
firewall-cmd --zone=public --permanent --add-service=ftp

echo "-----------------------------------------"
echo

#RELOADING THE FIREWALL AFTER ADDING THE FTP SERVER
echo "REBOOTING THE FIREWALLAGAIN"
firewall-cmd --reload
echo

echo "-----------------------------------------"
echo

#LISTING ALL THE CONFIGURED SERVERS
echo "HERE IS THE LIST OF SERVERS THAT HAVE BEEN CONFIGURED"
echo
firewall-cmd --list-all
echo 

echo "-----------------------------------------"
echo 

echo "THANK YOU !"
echo

