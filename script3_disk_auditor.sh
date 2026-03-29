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
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "--- Software Directory Check ---"
# Check if Python's primary library/config directory exists
PYTHON_DIR="/usr/lib/python3"

if [ -d "$PYTHON_DIR" ]; then
    PYTHON_PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "Python Directory ($PYTHON_DIR) => Permissions: $PYTHON_PERMS"
else
    echo "Python Directory ($PYTHON_DIR) does not exist on this system."
fi
