import os

def set_black_background():
    # ANSI escape code for black background
    os.system("echo -e '\033[48;5;0m'")  # Black background
    os.system("echo -e '\033[38;5;15m'")  # White text (light gray)

def set_custom_prompt():
    # Set a simple prompt
    custom_prompt = "\033[38;5;10m[\u@\h \W]\$ "  # Green color for user@hostname and directory
    os.system(f"echo -e 'PS1=\"{custom_prompt}\"' >> ~/.bashrc")

def place_icon_at_top_right():
    # Print the '😈' icon at the top right corner (approximation)
    rows, columns = os.popen('stty size', 'r').read().split()
    rows = int(rows)
    columns = int(columns)

    # Move the cursor to the top-right and print the icon
    icon = "😈"
    print(f"\033[{rows};{columns}H{icon}", end="")  # Move cursor to bottom right and print icon

def clear_screen():
    os.system("clear")

def apply_theme():
    # Apply the black background
    set_black_background()

    # Apply the custom prompt (it will add it to ~/.bashrc)
    set_custom_prompt()

    # Clear the terminal screen for the changes to take effect
    clear_screen()

    # Place the icon at the top-right corner of the screen
    place_icon_at_top_right()

    print("\033[0m")  # Reset colors to defaults (in case of other unwanted color effects)

# Run the function to apply the custom theme
apply_theme()
