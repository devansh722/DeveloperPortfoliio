
#!/bin/bash

# Author: Devansh
# Script: Folder Backup

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$(dirname "$1")" "$(basename "$1")"

SIZE=$(du -h "$BACKUP_DIR/$BACKUP_FILE" | awk '{print $1}')

echo "Backup successful!"
echo "File: $BACKUP_FILE"
echo "Size: $SIZE"

echo "$TIMESTAMP - Backup successful: $BACKUP_FILE ($SIZE)" >> "$BACKUP_DIR/backup.log"
