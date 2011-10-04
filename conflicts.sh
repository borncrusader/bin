#!/bin/bash

# this file finds all the conflict files in the dropbox folder
find ~/Dropbox -name '*conflicted copy*'

# remove all the conflicts
if [ ! -z "$1" ]; then
    if [ "rm" == "$1" ]; then
        echo "deleting"
        find ~/Dropbox -name '*conflicted copy*' -exec rm {} \;
    fi
fi
