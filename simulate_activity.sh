#!/bin/bash

# Function to simulate mouse movement
simulate_mouse() {
    for i in {1..10}; do
        xdotool mousemove $((RANDOM % 1024)) $((RANDOM % 768))
        sleep 0.5
    done
}

# Function to simulate typing
simulate_typing() {
    xdotool type "This is a test of screen activity simulation."
    xdotool key Return
}

# Main simulation loop
for i in {1..3}; do
    simulate_mouse
    simulate_typing
    sleep 1
done