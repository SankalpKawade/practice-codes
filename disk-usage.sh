#!/bin/bash

cat <<EOF > /dev/null
- to define threshold
- search the filesystems and filter out which are not required and pipe with while loop
- create a usage variable and it should have value without %
- create partition var and store the value of partition
- if usage is greater than or equal to threshold then, print warning with usage and partition
- close the if and while   
EOF

THRESHOLD=80
df -H | grep -vE '^Filesystems|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
usage=$(echo $output | awk '{ print $1 }' | cut -d'%' -f1)
partition=$(echo $output | awk '{ print $2 }')
if [ "$usage" -ge "$THRESHOLD" ] then;
  echo("Warning: Disk space for $partition is at ${usage}%")
fi
done