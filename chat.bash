#!/bin/bash

# Run the 'git describe --tags' command and capture its output
describe_output=$(git describe --tags)
describe_output=$(git describe --tags 2>/dev/null)

# Check if the output is empty
if [ -z "$describe_output" ]; then
  echo "No tags found."
  # Execute your code here if 'git describe --tags' is empty
else
  echo "Tags found: $describe_output"
  # Execute your code here if 'git describe --tags' is not empty
fi
