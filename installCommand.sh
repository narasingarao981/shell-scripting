#!/bin/bash

installation=$1
runUser="root"


if [ $USER -eq $runUser ] ; then
  echo "Script is executing with root user, Proceeding for installation part"
else
  echo "Script is not executed with root user. killing the script execution, execute with root user"
  exit 1
fi

dnf list installed $installation

if [ $? -ne 0 ] ; then
  echo "$installation is not installed. Proceeding with installation"
  dnf install $installation

  if [ $? -eq 0 ] ; then
    echo "$installation installed.. SUCCESSFUL"
  else
    echo "$installation not installed properly. Check the installer name and try again.. FAILED"
    exit 1
  fi
else 
  echo "$installation already exists... SKIPPED"

fi