#! /usr/bin/env bash

# Create new user processed directory
#mkdir users_processed

# Get directory from parameter
strDirectory=$1

# Get file name from parameter
# strfile=$1

function funcChangeExtension(){
  cd $strDirectory
  for fileCurrent in *.txt
  do
    echo $fileCurrent
    mv -- "$fileCurrent" "${fileCurrent%.txt}.bak"
  done
}

function funcChangeBack(){
cd $strDirectory
  for fileCurrent in *.bak
  do
    echo $fileCurrent
    mv -- "$fileCurrent" "${fileCurrent%.bak}.txt"
  done
}
# Iterate through the file and print the number of users
#((intUsers--))
#echo $intUsers

# Move all user files from users to users_processed
#mv users/* users_processed/*.bak


#funcChangeExtension
funcChangeBack
