#!/bin/bash

# Set the path to the executable
EXECUTABLE="./output/app"

# Check if the executable exists before running
if [ -f "$EXECUTABLE" ]; then
    echo "Running the application..."
    $EXECUTABLE | tee ./logs/execution.log
    echo "Execution completed. Check ./logs/execution.log for details."
else
    echo "Executable not found. Please build the project first."
    exit 1
fi
