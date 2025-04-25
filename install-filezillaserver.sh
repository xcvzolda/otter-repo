#!/bin/bash

# Define variables
DEB_URL="https://dl4.cdn.filezilla-project.org/server/FileZilla_Server_1.10.3_x86_64-linux-gnu.deb?h=kZnOvSn3NhzQ3N5fp6czdw&x=1745598860"
DEB_FILE="$HOME/FileZilla_Server_1.10.3_x86_64-linux-gnu.deb"

# Download the .deb file
echo "Downloading FileZilla Server..."
curl -L "$DEB_URL" -o "$DEB_FILE"

# Install the .deb package
echo "Installing FileZilla Server..."
sudo dpkg -i "$DEB_FILE"

# Fix any missing dependencies
sudo apt-get install -f -y

# Remove the .deb file
rm "$DEB_FILE"
echo "Installation complete and .deb file removed!"
