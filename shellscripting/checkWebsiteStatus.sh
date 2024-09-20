#!/bin/bash

check_website() {
   url="$1"
   response=$(curl -s -o /dev/null -w "%{http_code}" "$url")

   if [ "$response" == "200" ];  then

	echo "website $url is up and running"

else 
	echo "website $url is down!"

fi
}
check_website "https://www.google.com"

