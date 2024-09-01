#!/bin/bash

# Load configuration from config.env
if [ -f "config.env" ]; then
    echo "Loading configuration..."
    source config.env
    echo "Configuration loaded:"
    echo "Build Type: $BUILD_TYPE"
    echo "Log Level: $LOG_LEVEL"
    echo "Max Threads: $MAX_THREADS"
else
    echo "Configuration file not found. Using default settings."
fi
