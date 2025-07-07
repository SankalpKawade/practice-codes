#!/bin/bash

DB_NAME="mydatabase"
mkdir /home/ubuntu/db_backup
BACKUP_DIR="/home/ubuntu/db_backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mysqldump -u root -p $DB_NAME > $BACKUP_DIR/$DB_NAME-$DATE.sql
echo "Database backup completed: $BACKUP_DIR/$DB_NAME-$DATE.sql"
