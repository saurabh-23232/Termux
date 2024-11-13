#!/bin/bash

# Check if the user is using bash or zsh
SHELL_CONFIG_FILE="$HOME/.bashrc"  # Default to .bashrc for bash users

if [[ $SHELL == *"zsh"* ]]; then
  SHELL_CONFIG_FILE="$HOME/.zshrc"  # Use .zshrc for zsh users
fi

# Check if the .bashrc or .zshrc file exists
if [ ! -f "$SHELL_CONFIG_FILE" ]; then
  touch "$SHELL_CONFIG_FILE"  # Create the file if it doesn't exist
fi

# Add banner code to .bashrc or .zshrc (depending on shell)
echo "Adding custom banner to $SHELL_CONFIG_FILE..."

cat << EOF >> "$SHELL_CONFIG_FILE"

# Custom Banner
echo -e "\e[48;5;0m"  # Set background color to black
echo -e "\e[38;5;226m"  # Set text color to yellow
echo -e "\e[38;5;93m"  # Set text color to purple for the banner

cat << 'BANNER'
  _____             _ _   _    _            _    _             
 |  __ \           (_) | | |  | |          | |  (_)            
 | |  | | _____   ___| | | |__| | __ _  ___| | ___ _ __   __ _ 
 | |  | |/ _ \ \ / / | | |  __  |/ _` |/ __| |/ / | '_ \ / _` |
 | |__| |  __/\ V /| | | | |  | | (_| | (__|   <| | | | | (_| |
 |_____/ \___| \_/ |_|_| |_|  |_|\__,_|\___|_|\_\_|_| |_|\__, |
                                                          __/ |
                                                         |___/  
BANNER

# Reset color to default
echo -e "\e[0m"

EOF

echo "Banner added successfully!"
