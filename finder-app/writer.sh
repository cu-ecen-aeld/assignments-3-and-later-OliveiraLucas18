#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
  echo "Error: Incorrect number of arguments."
  echo "Usage: $0 <writefile> <writestr>"
  exit 1
fi

# Extract arguments
writefile="$1"
writestr="$2"

# Check if writefile argument is provided
if [ -z "$writefile" ]; then
  echo "Error: 'writefile' argument not specified."
  exit 1
fi

# Check if writestr argument is provided
if [ -z "$writestr" ]; then
  echo "Error: 'writestr' argument not specified."
  exit 1
fi

# Create directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write content to file
echo "$writestr" > "$writefile"

# Check if file was created successfully
if [ $? -ne 0 ]; then
  echo "Error: Failed to create file '$writefile'"
  exit 1
fi

# Exit with success status
exit 0

