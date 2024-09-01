#!/bin/bash

# Check for common build errors in error log
ERROR_LOG="./logs/error.log"

if [ -f "$ERROR_LOG" ]; then
    echo "Analyzing error log..."
    grep -i "error" $ERROR_LOG | tee ./logs/error_summary.log
    echo "Common errors have been summarized in error_summary.log."
else
    echo "Error log not found. No errors to analyze."
fi
