#!/bin/bash

validate(){
  if [ $1 -eq 0 ] ; then
    echo "$2 installed Successfully.. SUCCESS"
  else 
    echo "$2 not installed correctly. Check issue and retry.. FAILED"
    exit 1
  fi
}

runUser=$(id -u)
if [ $runUser -eq 0] ; then
  echo "running with root user, Proceeding with installation steps"
else
  echo "not running with root user, please execute with root user"
  exit 1
fi

dnf list installed python3

if [ $? -ne 0 ] ; then
   echo "Package not exists, instaling the package"
   dnf install python3
   validate $? python3
else
   echo "package already exists... SKIPPED"
   exit 1
fi