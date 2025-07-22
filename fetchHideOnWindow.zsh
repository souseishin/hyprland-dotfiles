#!/bin/zsh

# Define the threshold for window size (in columns)
WINDOW_THRESHOLD=95

# Get the number of columns in the terminal
COLUMNS=$(tput cols)

# Check if the terminal width is less than the threshold
if [ "$COLUMNS" -gt "$WINDOW_THRESHOLD" ]; then
  fastfetch --kitty-direct /home/souseishin/.wallpapers/itte.png --logo-padding-left 1 --logo-padding-right 1 --logo-padding-top 5 --disable-linewrap
fi
