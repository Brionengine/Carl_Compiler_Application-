#!/bin/bash

# Set the path to the executable
EXECUTABLE="./output/app"

# Check if the executable exists
if [ -f "$EXECUTABLE" ]; then
    echo "Running the application..."
    $EXECUTABLE | tee ./logs/execution.log
    echo "Execution completed. Check the logs for details."
else
    echo "Executable not found. Build the project first."
    exit 1
fi
