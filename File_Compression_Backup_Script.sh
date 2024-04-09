#!/bin/bash

#STEP-1: CREATE A DIRECTORY
echo "Creating a Directory for the process"
mkdir backup-dir 
echo

echo "This is the Back-up Directory that has been created"
ls
echo

#STEP-2: CREATE A FILE TO COMPRESS IT
echo "Creating a file"
touch file-1
echo "Welcome to this file ! Hope you have a great day !" > file-1
echo

echo "The file has been created"
ls
echo

#STEP-3: COMPRESSIGN THE FILE 
echo "Compressing the file"
gzip file-1
echo "This is the compressed file in the color red"
ls
echo

#STEP-4: COPY THE COMPRESSED FILE INTO THE DIRECTORY
echo "Copying the compressed file in to the Directory"
cp file-1.gz  backup-dir 
echo

#STEP-5: THE THE BACKUP OF THE DIRECTORY 
echo "Backing up the directory now"
tar -cvf backup-dir.tar.gz backup-dir
echo 

echo "Here you can see the backup version of the directory in color red"
ls
echo

echo "Thank you for staying tuned ! Hope you have a great day !"

echo 

echo "Look what is inside the backup directory ?????"
tar -tvf backup-dir.tar.gz
