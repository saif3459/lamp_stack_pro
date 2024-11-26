#!/bin/bash

# Backup MySQL databases
BACKUP_DIR="/var/backups/mysql"
DATE=$(date +%F)
MYSQL_USER="root"
MYSQL_PASSWORD="your_password"

echo "Backing up MySQL databases..."

# Create a backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Export all databases to SQL files
mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD --all-databases > "$BACKUP_DIR/mysql_backup_$DATE.sql"

echo "MySQL backup completed successfully: $BACKUP_DIR/mysql_backup_$DATE.sql"