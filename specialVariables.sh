#!/bin/bash

echo "$1 is first argument"
echo "$2 is second argument"
echo "$@ are all the arguments" 
echo "$# number of arguments"
echo "$0 is the script name"
echo "$PWD is the current script directory"
echo "$HOME is the users home directory"
echo "$$ is the PID of current script"
sleep 10 &
echo "$! is the PID of the last running process"
echo "$? is the exit status of last command executed"
echo "$USER running the script"