#!/usr/bin/env bash

# Terminate all running bars
killall -q polybar

# Launch
# echo "---" | tee -a /tmp/polybar.log
# polybar example 2>&1 | tee -a /tmp/polybar.log & disown

for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar --reload example &
done

echo "Bar launched..."
