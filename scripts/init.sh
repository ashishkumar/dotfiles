#! /usr/local/bin/bash

# Airport Fix
cp co.ashish.airport_fix.plist ~/Library/LaunchAgents
launchctl load -w ~/Library/LaunchAgents/co.ashish.airport_fix.plist

