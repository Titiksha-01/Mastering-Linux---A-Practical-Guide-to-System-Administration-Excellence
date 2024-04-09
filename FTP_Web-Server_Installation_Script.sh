#!/bin/bash

#INSTALLING THE HTTP SERVER
echo "INSTALLING THE WEB SERVER"
yum install httpd -y 
echo

echo "-----------------------------------------------------"
echo

echo "STARTING THE WEB SERVER"
systemctl start httpd
echo

echo "-----------------------------------------------------"
echo

echo "ENABLING THE WEB SERVER"
systemctl enable httpd 
echo 

echo "-----------------------------------------------------"
echo

#INSTALLING THE FTP SERVER 
echo "INSTALLING FTP SERVER"
yum install vsftpd -y 
echo

echo "-----------------------------------------------------"
echo

echo "STARTING THE FTP SERVER"
systemctl start vsftpd
echo

echo "-----------------------------------------------------"
echo

echo "ENABLING THE FTP SERVER"
systemctl enable vsftpd
echo

echo "-----------------------------------------------------"
echo

echo "HERE IS THE STATUS OF THE WEB SERVER"
echo
systemctl status httpd 
echo

echo "-----------------------------------------------------"
echo

echo "HERE IS THE STATUS OF THE FTP SERVER"
echo
systemctl status vsftpd
echo 

echo "-----------------------------------------------------"
echo

echo "THANK YOU !"
echo
