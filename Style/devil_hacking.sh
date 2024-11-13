#!/bin/bash

SCRIPT_PATH="$HOME/devil_hacking.sh"

if [ ! -f "$SCRIPT_PATH" ]; then
    cat > "$SCRIPT_PATH" << 'EOF'
#!/bin/bash

clear
echo -e "\033[48;5;0m\033[38;5;4m"

cat << 'BANNER_EOF'
  _____             _ _   _    _            _    _              ⠀⠀  ⠀⢀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀
 |  __ \           (_) | | |  | |          | |  (_)            ⠀  ⢀⣤⣾⣿⣾⣿⣿⣿⣿⣿⣷⣄⠀⠀
 | |  | | _____   ___| | | |__| | __ _  ___| | ___ _ __   __ _   ⢠⣾⣿⢛⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀
 | |  | |/ _ \ \ / / | | |  __  |/ _` |/ __| |/ / | '_ \ / _` |  ⣾⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧
 | |__| |  __/\ V /| | | | |  | | (_| | (__|   <| | | | | (_| |  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
 |_____/ \___| \_/ |_|_| |_|  |_|\__,_|\___|_|\_\_|_| |_|\__, |  ⣿⡿⠻⢿⣿⣿⣿⣿⣿⡿⠻⢿⡿⢿⣿
                                                          __/ |  ⢸⡇⠀⠀⠉⠛⠛⣿⣿⠛⠛⠉⠀⠀⣿⡇
                                                         |___/   ⢸⣿⣀⠀⢀⣠⣴⡇⠹⣦⣄⡀⠀⣠⣿⡇
                                                              ⠀  ⠈⠻⠿⠿⣟⣿⣿⣦⣤⣼⣿⣿⠿⠿⠟⠀
                                                              ⠀⠀  ⠀⠀⠀⠸⡿⣿⣿⢿⡿⢿⠇⠀⠀⠀⠀
                                                              ⠀⠀⠀⠀   ⠀⠀⠀⠈⠁⠈⠁⠀⠀⠀⠀⠀⠀
BANNER_EOF

EOF

    chmod +x "$SCRIPT_PATH"
fi

if ! grep -q "$SCRIPT_PATH" "$HOME/.bashrc"; then
    echo "bash $SCRIPT_PATH" >> "$HOME/.bashrc"
fi

if [ -f "$HOME/.zshrc" ] && ! grep -q "$SCRIPT_PATH" "$HOME/.zshrc"; then
    echo "bash $SCRIPT_PATH" >> "$HOME/.zshrc"
fi

bash "$SCRIPT_PATH"
