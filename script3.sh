#!/bin/bash
# Script 3: Disk and Permission Auditor
 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
 
echo "Directory Audit Report"
echo "----------------------"
 
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
 PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
 SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
 echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
 echo "$DIR does not exist"
 fi
done
 
# Firefox config directory check
FIREFOX_DIR="$HOME/.mozilla"
 
if [ -d "$FIREFOX_DIR" ]; then
 echo ""
 echo "Firefox config directory found:"
 ls -ld $FIREFOX_DIR
else
 echo "Firefox config directory not found."
fi
