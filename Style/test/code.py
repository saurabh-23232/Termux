import os

# Set UTF-8 encoding (important for emoji handling)
# -*- coding: utf-8 -*-

def display_banner():
    """Display the custom ASCII banner in bold purple."""
    banner = """
\033[1;35m
________              .__.__      ___ ___                __   .__                
\______ \   _______  _|__|  |    /   |   \_____    ____ |  | _|__| ____    ____  
 |    |  \_/ __ \  \/ /  |  |   /    ~    \__  \ _/ ___\|  |/ /  |/    \  / ___\ 
 |    `   \  ___/\   /|  |  |__ \    Y    // __ \\  \___|    <|  |   |  \/ /_/  >
/_______  /\___  >\_/ |__|____/  \___|_  /(____  /\___  >__|_ \__|___|  /\___  / 
        \/     \/                      \/      \/     \/     \/       \//_____/   
\033[0m
    """
    print(banner)

def set_black_background():
    """Set the terminal background to black and text to white."""
    os.system("echo -e '\033[48;5;0m'")  # Set black background
    os.system("echo -e '\033[38;5;15m'")  # Set white text

def set_custom_prompt():
    """Set a custom shell prompt to show user@hostname ~ in green."""
    custom_prompt = '\033[38;5;10m[\u@\h \W]\$ '  # Green prompt
    
    # Modify the .bashrc to set the PS1 variable with the custom prompt
    with open(os.path.expanduser('~/.bashrc'), 'a') as f:
        f.write(f'\nPS1="{custom_prompt}"\n')  # Append the custom prompt to .bashrc

def clear_screen():
    """Clear the screen to apply changes."""
    os.system("clear")

def apply_theme():
    """Apply the full theme: black background, custom prompt, and banner."""
    # Display the banner
    display_banner()

    # Set black background and white text
    set_black_background()

    # Set the custom prompt
    set_custom_prompt()

    # Clear the terminal screen to apply the background color
    clear_screen()

    # Reset the colors back to normal
    print("\033[0m")

# Run the function to apply the theme
apply_theme()
