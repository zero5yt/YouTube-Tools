#!/bin/bash

clear
echo "Installing Almaras YT Mp3 & Video..."

# Update packages
pkg update -y && pkg upgrade -y

# Install dependencies
pkg install -y git python ffmpeg

# Install yt-dlp
pip install --upgrade yt-dlp

# Setup storage
termux-setup-storage

# Create folder
mkdir -p /storage/emulated/0/Download/ATOOLS

# Give permission
chmod +x yt.sh

# Optional: shortcut command
cp yt.sh $PREFIX/bin/streamixphyt

echo ""
echo "======================================="
echo " INSTALLATION COMPLETE ✅"
echo "======================================="
echo "Type: streamixphyt"
echo "or: bash yt.sh"
