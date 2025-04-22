#!/bin/bash

# Define the installation directory
INSTALL_DIR="$HOME/bin"
TREEPOEM_PATH="$INSTALL_DIR/treepoem"

# Remove the treepoem script
if [ -f "$TREEPOEM_PATH" ]; then
    rm "$TREEPOEM_PATH"
    echo "treepoem script has been removed from $INSTALL_DIR."
else
    echo "treepoem script not found in $INSTALL_DIR. Nothing to remove."
fi

# Remove the PATH modification from ~/.bashrc
if grep -q "$INSTALL_DIR" ~/.bashrc; then
    sed -i "/$INSTALL_DIR/d" ~/.bashrc
    echo "Removed $INSTALL_DIR from your PATH in ~/.bashrc."
else
    echo "$INSTALL_DIR not found in ~/.bashrc. No changes made."
fi

# Reload ~/.bashrc to apply the changes
source ~/.bashrc

echo "treepoem has been uninstalled!"
