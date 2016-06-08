#! /usr/local/bin/bash

# Fix Airport Connectivity Issues
#
# Ping Google's DNS `8.8.8.8` every 3 seconds
# When we don't get a response, open Airport Utility for 2 seconds
# Airport Utility does its job and fixes the network connection.
# Work in the secure knowledge that everything is working as expected

ping -c 2 -t 3 8.8.8.8 > /dev/null
if [ $? -eq 0 ] 
  then sleep 2
else
  open -g -a "Airport Utility"
  sleep 2
  osascript -e 'quit app "Airport Utility"'
fi

