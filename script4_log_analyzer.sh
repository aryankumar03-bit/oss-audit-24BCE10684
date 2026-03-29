#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log_analyzer.sh /var/log/syslog "error"
# (Use /var/log/messages instead of syslog if you are on Fedora/CentOS)

LOGFILE=${1:-"/var/log/syslog"} # Defaulting to syslog as it's common in Ubuntu
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Do-while style retry if the file is empty or missing
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: File '$LOGFILE' is empty, requires sudo, or does not exist."
    read -p "Please enter a valid log file path to analyze (or 'q' to quit): " LOGFILE
    if [ "$LOGFILE" == "q" ] || [ -z "$LOGFILE" ]; then
        echo "Exiting analyzer."
        exit 1
    fi
done

# Read line by line and count keyword occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Analysis Results:"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE."
echo ""
echo "Last 5 matching lines from the log:"
# Print the last 5 matching lines using tail + grep
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
