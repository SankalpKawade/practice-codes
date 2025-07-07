#!/bin/bash

SOURCE="/home/ubuntu/source"
DESTINATION="/home/ubuntu/destination"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

#copy source to destination
mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE
echo "Script ended on $DATE"
