#! /usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar.log
polybar i3bar 2>&1 | tee -a /tmp/polybar.log & disown

# Launch tiny bar (tray)
# echo "---" | tee -a /tmp/polybar2.log
# polybar tiny-tray 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bar launched..."
