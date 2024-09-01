#!/bin/bash

# Set directories and files
SOURCE_DIR="./src"
BUILD_DIR="./build"
OUTPUT_DIR="./output"
LOG_FILE="./logs/build.log"
ERROR_LOG="./logs/error.log"

# Clear previous build artifacts
echo "Cleaning previous build artifacts..."
rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR

# Compile the source code with optimizations and error checking
echo "Compiling source code with optimizations..."
gcc -Wall -O2 -o $BUILD_DIR/app $SOURCE_DIR/*.c 2> $ERROR_LOG | tee $LOG_FILE

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "Build successful."
    # Move the executable to the output directory
    mv $BUILD_DIR/app $OUTPUT_DIR/
    echo "Executable is ready in $OUTPUT_DIR."
else
    echo "Build failed. Check error log: $ERROR_LOG for details."
    exit 1
fi
