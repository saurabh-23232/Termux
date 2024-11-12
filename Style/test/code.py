import os

# Set UTF-8 encoding (important for emoji handling)
# The line below is a comment and just for clarity if working in an older Python version
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
    custom_prompt = "\033[38;5;10m[\u@\h \W]\$ "  # Green prompt
    with open(os.path.expanduser('~/.bashrc'), 'a') as f:
        f.write(f'\nPS1="{custom_prompt}"\n')  # Add custom prompt to .bashrc

def place_icon_at_top_right():
    """Place the 😈 icon at the top-right corner of the terminal."""
    # Get the terminal size
    rows, columns = os.popen('stty size', 'r').read().split()
    rows = int(rows)
    columns = int(columns)

    # Unicode for the "😈" emoji (using escape sequence)
    icon = "\U0001F608"  # Unicode for the '😈' emoji

    # Print the icon at the top-right corner
    print(f"\033[{1};{columns}H{icon}", end="")  # Move cursor and print icon at top-right

def clear_screen():
    """Clear the screen to apply changes."""
    os.system("clear")

def apply_theme():
    """Apply the full theme: black background, custom prompt, top-right icon, and banner."""
    # Display the banner
    display_banner()

    # Set black background and white text
    set_black_background()

    # Set the custom prompt
    set_custom_prompt()

    # Clear the terminal screen to apply the background color
    clear_screen()

    # Place the icon at the top-right corner
    place_icon_at_top_right()

    # Reset the colors back to normal
    print("\033[0m")

# Run the function to apply the theme
apply_theme()
