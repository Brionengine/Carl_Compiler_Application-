#!/bin/bash

# Clean up build directories, logs, and outputs
echo "Cleaning up all build artifacts and logs..."
rm -rf ./build ./output ./logs
mkdir -p build output logs

echo "Cleanup complete. Ready for a fresh build."
