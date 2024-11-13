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
cat << 'BANNER_EOF' 
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
BANNER_EOF

# Make the script executable
chmod +x "$SCRIPT_PATH"
echo "Script created successfully!"
fi

# Add the script to .bashrc to run it on terminal start if not already added
if ! grep -q "$SCRIPT_PATH" "$HOME/.bashrc"; then
    echo "Adding script to .bashrc..."
    # Add the execution of the script to .bashrc to run it every time a terminal session starts
    echo "bash $SCRIPT_PATH" >> "$HOME/.bashrc"
    echo "Added to .bashrc successfully!"
fi

# If using zsh instead of bash, ensure we also add it to .zshrc
if [ -f "$HOME/.zshrc" ] && ! grep -q "$SCRIPT_PATH" "$HOME/.zshrc"; then
    echo "Adding script to .zshrc..."
    echo "bash $SCRIPT_PATH" >> "$HOME/.zshrc"
    echo "Added to .zshrc successfully!"
fi

# Optionally, execute the banner script immediately
bash "$SCRIPT_PATH"
