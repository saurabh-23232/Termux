#!/usr/bin/env python3
import pyfiglet
from termcolor import colored

# Define a function for the banner
def show_banner():
    banner_text = "Devil Hacker"
    ascii_banner = pyfiglet.figlet_format(banner_text)
    print(colored(ascii_banner, "red"))

# Define a function for color options
def color_options():
    print("Choose a color code for your terminal text:")
    colors = ["red", "green", "yellow", "blue", "magenta", "cyan", "white"]
    for index, color in enumerate(colors, start=1):
        print(f"{index}. {colored(color.capitalize(), color)}")

    # Get user choice
    choice = input("Enter color number (1-7): ")
    try:
        selected_color = colors[int(choice) - 1]
        print(colored("\nYour terminal is now set to:", selected_color))
    except (IndexError, ValueError):
        print("Invalid choice. Default color will be used.")

# Main function
def main():
    show_banner()
    color_options()

# Run the main function
if __name__ == "__main__":
    main()
