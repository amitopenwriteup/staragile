#!/bin/bash

echo "enter directory"

read directory

cd "/"$directory

echo "current directory is:"; pwd 

output=$(git status) 
exp_output ="fatal: not a git repository (or any of the parent directories): .git"

if ["$output" == "$exp_output"];
then
	echo "directory is not git enabled"

else 
	echo "directory is git enabled"

fi

