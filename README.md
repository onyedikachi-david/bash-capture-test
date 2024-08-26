# Bash-based X11 Screenshot, Audio, and Screen Activity Capture Test

This repository demonstrates how to capture screenshots, generate audio, simulate screen activity, and record everything in a GitHub Actions environment using X11 and bash scripting.

## Contents

- `index.html`: A simple HTML page that displays text
- `capture.sh`: Bash script to set up the environment, capture screenshot, and record audio/video
- `generate_audio.py`: Python script to generate a simple melody
- `simulate_activity.py`: Python script to simulate mouse movements and typing
- `.github/workflows/capture.yml`: GitHub Actions workflow configuration file

## How it works

1. The GitHub Actions workflow sets up a virtual environment with X11, Firefox, PulseAudio, FFmpeg, and Python dependencies.
2. The `generate_audio.py` script creates a WAV file with a simple melody.
3. The `capture.sh` script starts Xvfb (virtual framebuffer) and PulseAudio.
4. Firefox is launched to display the `index.html` file.
5. The `simulate_activity.py` script simulates mouse movements and typing.
6. FFmpeg captures the screen and generated audio for 15 seconds.
7. A screenshot is taken using ImageMagick's `import` command.
8. The resulting screenshot (PNG), video with audio (MP4), and generated audio (WAV) are saved as artifacts.

## Usage

1. Push this repository to your GitHub account.
2. GitHub Actions will automatically run the capture workflow on each push.
3. Check the workflow run for artifacts containing the screenshot, video, and audio output.

To view the artifacts:
1. Go to the "Actions" tab in your GitHub repository.
2. Click on the latest workflow run.
3. Scroll down to the "Artifacts" section.
4. Download the "capture-output" artifact to see the screenshot, video, and audio files.

Note: Ensure that your GitHub repository is set up to allow GitHub Actions.
