#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3" # Using python3 as it's the package name in Ubuntu

# Check if package is installed
# dpkg is the standard package manager for Ubuntu/Debian based systems
# (Use rpm -q $PACKAGE instead if using a RedHat based system)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Status|Description' | head -n 3
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "--- FOSS Philosophy Note ---"

# Case statement that prints a one-line philosophy note
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" 
        ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;;
    python3|python)
        echo "Python: A language shaped entirely by community, focusing on readability and democratizing programming."
        ;;
    vlc)
        echo "VLC: A media player that plays everything, proving volunteers can out-design corporations."
        ;;
    firefox)
        echo "Firefox: A browser backed by a nonprofit, dedicated to keeping the web open and user-first."
        ;;
    *)
        echo "Note: Philosophy note not found for this customized software package."
        ;;
esac
