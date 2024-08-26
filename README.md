# Bash-based X11 Screenshot and Audio Capture Test

This repository demonstrates how to capture screenshots and audio in a GitHub Actions environment using X11 and bash scripting.

## Contents

- `index.html`: A simple HTML page that displays text and plays audio
- `capture.sh`: Bash script to set up the environment, capture screenshot, and record audio/video
- `test-audio.mp3`: A sample audio file to be played during the test
- `.github/workflows/capture.yml`: GitHub Actions workflow configuration file

## How it works

1. The GitHub Actions workflow sets up a virtual environment with X11, Firefox, PulseAudio, and FFmpeg.
2. The `capture.sh` script starts Xvfb (virtual framebuffer) and PulseAudio.
3. Firefox is launched to display the `index.html` file.
4. A screenshot is taken using ImageMagick's `import` command.
5. FFmpeg captures both the screen and audio for 5 seconds.
6. The resulting screenshot (PNG) and video with audio (MP4) are saved as artifacts.

## Usage

1. Push this repository to your GitHub account.
2. GitHub Actions will automatically run the capture workflow on each push.
3. Check the workflow run for artifacts containing the screenshot and video output.

To view the artifacts:
1. Go to the "Actions" tab in your GitHub repository.
2. Click on the latest workflow run.
3. Scroll down to the "Artifacts" section.
4. Download the "capture-output" artifact to see the screenshot and video.

Note: Ensure that your GitHub repository is set up to allow GitHub Actions.
