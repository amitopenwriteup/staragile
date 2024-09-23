#!/bin/bash
search_word="Error"
search_file=/var/log/syslog

if grep -q "$search_word" "$search_file";
then
	echo "found '$search_word' in '$search_file"
else
 echo "No '$search_word' found in '$search_file"

fi

