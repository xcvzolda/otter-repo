#!/bin/bash

# Define variables
URL="https://github.com/PolyMC/PolyMC/releases/download/7.0/PolyMC-Linux-portable-7.0.tar.gz"
TARGET_DIR="$HOME/PolyMC"
DESKTOP_FILE="$HOME/.local/share/applications/polyMC.desktop"
DESKTOP_SHORTCUT="$HOME/Desktop/polyMC.desktop"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Download the tar.gz file
echo "Downloading PolyMC..."
curl -L "$URL" -o "$HOME/PolyMC.tar.gz"

# Extract the file
echo "Extracting PolyMC..."
tar -xzf "$HOME/PolyMC.tar.gz" -C "$TARGET_DIR" --strip-components=1

# Clean up the tar.gz file
rm "$HOME/PolyMC.tar.gz"

# Create .desktop shortcut file for start menu
echo "[Desktop Entry]
Name=PolyMC
Comment=Minecraft Launcher
Exec=$TARGET_DIR/PolyMC
Icon=$TARGET_DIR/icons/polyMC.png
Terminal=false
Type=Application
Categories=Game;" > "$DESKTOP_FILE"

# Copy shortcut to desktop and make it executable
cp "$DESKTOP_FILE" "$DESKTOP_SHORTCUT"
chmod +x "$DESKTOP_FILE"
chmod +x "$DESKTOP_SHORTCUT"

echo "PolyMC installed and shortcuts created!"
echo "You can find PolyMC in your start menu or on your desktop."

# Change directory and execute PolyMC
cd "$TARGET_DIR"
echo "Running PolyMC..."
./PolyMC
