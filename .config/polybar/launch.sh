#!/usr/bin/env bash

# Terminate all running bars
killall -q polybar

# Launch
echo "---" | tee -a /tmp/polybar.log
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bar launched..."
