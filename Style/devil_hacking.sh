#!/bin/bash

# Define the script path (absolute path for Termux, adjust if necessary)
SCRIPT_PATH="$HOME/devil_hacking.sh"

# Check if the script exists
if [ ! -f "$SCRIPT_PATH" ]; then
    # If the file doesn't exist, create the script
    echo "Creating devil_hacking.sh script..."
    cat << 'EOF' > "$SCRIPT_PATH"
#!/bin/bash

# Clear the terminal screen for a fresh start
clear

# Set up your background and text colors
# Set background to black and text to blue/yellow
echo -e "\033[48;5;0m\033[38;5;4m"  # black background, blue text

# Show the full Devil banner logo (right-aligned with skull ASCII art)
cat << "EOF" | sed 's/^/                    /' 
  _____             _ _   _    _            _    _              ⠀⠀⠀⢀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀
 |  __ \           (_) | | |  | |          | |  (_)            ⠀⢀⣤⣾⣿⣾⣿⣿⣿⣿⣿⣷⣄⠀⠀
 | |  | | _____   ___| | | |__| | __ _  ___| | ___ _ __   __ _ ⢠⣾⣿⢛⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀
 | |  | |/ _ \ \ / / | | |  __  |/ _` |/ __| |/ / | '_ \ / _` |⣾⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧
 | |__| |  __/\ V /| | | | |  | | (_| | (__|   <| | | | | (_| |⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
 |_____/ \___| \_/ |_|_| |_|  |_|\__,_|\___|_|\_\_|_| |_|\__, |⣿⡿⠻⢿⣿⣿⣿⣿⣿⡿⠻⢿⡵
                                                          __/ |⢸⡇⠀⠀⠉⠛⠛⣿⣿⠛⠛⠉⠀⠀⣿⡇
                                                         |___/  ⢸⣿⣀⠀⢀⣠⣴⡇⠹⣦⣄⡀⠀⣠⣿⡇
                                                              ⠀⠈⠻⠿⠿⣟⣿⣿⣦⣤⣼⣿⣿⠿⠿⠟⠀
                                                              ⠀⠀⠀⠀⠀⠸⡿⣿⣿⢿⡿⢿⠇⠀⠀⠀⠀
                                                              ⠀⠀⠀⠀⠀⠀⠀⠈⠁⠈⠁⠀⠀⠀⠀⠀⠀
EOF

# Make the script executable
chmod +x "$SCRIPT_PATH"
echo "Script created successfully!"
fi

# Add the script to .bashrc or .zshrc to run it on terminal start if not already added
if ! grep -q "$SCRIPT_PATH" "$HOME/.bashrc" && ! grep -q "$SCRIPT_PATH" "$HOME/.zshrc"; then
    echo "Adding script to .bashrc or .zshrc..."
    # Check if user is using bash or zsh and append the execution command
    if [ -f "$HOME/.bashrc" ]; then
        echo "bash $SCRIPT_PATH" >> "$HOME/.bashrc"
    elif [ -f "$HOME/.zshrc" ]; then
        echo "bash $SCRIPT_PATH" >> "$HOME/.zshrc"
    fi
    echo "Added to .bashrc or .zshrc successfully!"
fi

# Execute the banner script to display immediately
bash "$SCRIPT_PATH"
