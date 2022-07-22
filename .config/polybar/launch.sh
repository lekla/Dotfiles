#!/usr/bin/env bash

# Terminate all running bars
killall -q polybar

# Launch
# echo "---" | tee -a /tmp/polybar.log
# polybar example 2>&1 | tee -a /tmp/polybar.log & disown

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#	MONITOR=$m polybar --reload example &
#done

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch main bar
polybar top &

# Launch external bar
my_external_monitor=$(xrandr --query | grep 'HDMI-0')
if [[ $my_external_monitor = *connected* ]]; then
	polybar top_external &
fi

echo "Bar launched..."
