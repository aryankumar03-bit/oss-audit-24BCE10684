#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose a paragraph using the provided answers
MANIFESTO_TEXT="On this day, $DATE, I declare my support for open knowledge. I rely on tools like $TOOL, which remind me that software is powerful when shared. To me, digital freedom is all about $FREEDOM. If I could contribute to this ecosystem, I would build and freely share $BUILD so that others might learn from it."

# Write to $OUTPUT using echo and >>
echo "My FOSS Manifesto" > "$OUTPUT"
echo "$MANIFESTO_TEXT" >> "$OUTPUT"

echo ""
echo "Manifesto successfully generated and saved to: $OUTPUT"
echo "--------------------------------------------------------"
cat "$OUTPUT"
echo "--------------------------------------------------------"

# --- Aliases Concept Demonstration ---
# In Linux, you can create a shortcut to run this script easily by using an alias.
# You would type this in your terminal to set it up:
# alias mymanifesto='./script5_manifesto_generator.sh'
# After setting that, simply typing 'mymanifesto' will run this script!
