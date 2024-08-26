#!/bin/bash
set -e

# Start Xvfb
Xvfb :99 -ac -screen 0 1024x768x24 &
export DISPLAY=:99

# Wait for Xvfb to start
sleep 2

# Start PulseAudio
pulseaudio --start

# Start Firefox and load the HTML file
firefox file://$(pwd)/index.html &

# Wait for Firefox to load
sleep 5

# Capture screenshot
import -window root screenshot.png

# Capture audio and video
ffmpeg -f x11grab -video_size 1024x768 -i :99 -f pulse -i default -t 5 output.mp4

# Kill Firefox and Xvfb
killall firefox
killall Xvfb

echo "Capture completed"
