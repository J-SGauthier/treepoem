#!/bin/bash

# Define the installation directory
INSTALL_DIR="$HOME/bin"

# Create the directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Download the treepoem script
curl -o "$INSTALL_DIR/treepoem" https://raw.githubusercontent.com/J-SGauthier/treepoem/main/treepoem.sh

# Make the script executable
chmod +x "$INSTALL_DIR/treepoem"

# Add $HOME/bin to the PATH if it's not already there
if ! grep -q "$INSTALL_DIR" ~/.bashrc; then
    echo "export PATH=\"$INSTALL_DIR:\$PATH\"" >> ~/.bashrc
    echo "Added $INSTALL_DIR to your PATH in ~/.bashrc"
fi

# Reload ~/.bashrc to apply the changes
source ~/.bashrc

echo "treepoem has been installed! You can now run it with the command: treepoem"
