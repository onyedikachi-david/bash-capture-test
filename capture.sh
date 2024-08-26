#!/bin/bash
set -e

# Start Xvfb
Xvfb :99 -ac -screen 0 1024x768x24 &
export DISPLAY=:99

# Wait for Xvfb to start
sleep 2

# Start PulseAudio
pulseaudio --start

# Generate audio using both Python and Bash
python3 generate_audio.py
./generate_audio.sh

# Start Firefox and load the HTML file
firefox file://$(pwd)/index.html &

# Wait for Firefox to load
sleep 5

# Start screen activity simulation using both Python and Bash
python3 simulate_activity.py &
./simulate_activity.sh &

# Capture audio and video
ffmpeg -f x11grab -video_size 1024x768 -i :99 -f pulse -i default -t 15 output.mp4

# Capture screenshot
import -window root screenshot.png

# Kill Firefox and Xvfb
killall firefox
killall Xvfb

echo "Capture completed"