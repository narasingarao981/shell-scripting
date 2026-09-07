#!/bin/bash

installation=$1

dnf list installed $installation

if [ $? -ne 0 ] ; then
  echo "$installation is not installed. Proceeding with installation"
  dnf install $installation

  if [ $? -eq 0 ] ; then
    echo "$installation installed.. SUCCESSFUL"
  else
    echo "$installation is failed.. FAILED"
    exit 1
  fi
else 
  echo "$installation already exists... SKIPPED"

fi