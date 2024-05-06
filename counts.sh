#!/bin/bash

# Directory to analyze (replace with your actual path)
directory="$1"

# Check if directory is provided as an argument
if [ -z "$directory" ]; then
  echo "Please provide the directory path as an argument."
  exit 1
fi

# Count HTML files
html_count=$(find "$directory" -type f -name "*.html" | wc -l)

# Count image files (common formats)
image_count=$(find "$directory" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" \) | wc -l)

# Count HTML files
html_count2=$(find "$directory" -type f -iname "*.html" | wc -l)

# Count image files (common formats)
image_count2=$(find "$directory" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | wc -l)



# Print the summary
echo "Found $html_count HTML pages."
echo "Found $image_count image files."
echo "Found $html_count2 HTML pages."
echo "Found $image_count2 image files."
