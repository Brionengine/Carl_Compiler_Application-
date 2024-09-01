#!/bin/bash

# Update and upgrade system packages
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install essential build tools and dependencies
echo "Installing build tools and dependencies..."
sudo apt install -y build-essential cmake git python3 python3-pip libssl-dev

# Check and install additional dependencies from requirements.txt if present
if [ -f "requirements.txt" ]; then
    echo "Installing Python dependencies..."
    pip3 install -r requirements.txt
else
    echo "No requirements.txt found. Skipping Python dependencies installation."
fi

# Create necessary directories if they don't exist
mkdir -p build output logs

echo "Environment setup complete. Ready for the build."
