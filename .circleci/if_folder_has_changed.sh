+#!/bin/bash

folder=$1
command=$2
 
# latest commit
LATEST_COMMIT=$(git rev-parse HEAD)

# latest commit where ${folder} was changed
FOLDER_COMMIT=$(git log -1 --format=format:%H --full-diff ${folder})

if [ $FOLDER_COMMIT = $LATEST_COMMIT ]; then
    echo "files in ${folder} folder has changed"
    eval $command
else
    echo "no changes in ${folder} folder"
    exit 0;
fi
