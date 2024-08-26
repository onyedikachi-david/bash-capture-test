# Bash and Python-based X11 Screenshot, Audio, and Screen Activity Capture Test

This repository demonstrates how to capture screenshots, generate audio, simulate screen activity, and record everything in a GitHub Actions environment using X11, with both Bash and Python scripting.

## Contents

- `index.html`: A simple HTML page that displays text
- `capture.sh`: Bash script to set up the environment, capture screenshot, and record audio/video
- `generate_audio.py`: Python script to generate a simple melody
- `generate_audio.sh`: Bash script to generate a simple melody using Sox
- `simulate_activity.py`: Python script to simulate mouse movements and typing
- `simulate_activity.sh`: Bash script to simulate mouse movements and typing using xdotool
- `.github/workflows/capture.yml`: GitHub Actions workflow configuration file

## How it works

1. The GitHub Actions workflow sets up a virtual environment with X11, Firefox, PulseAudio, FFmpeg, ImageMagick, xdotool, Sox, and Python dependencies.
2. Both Python and Bash scripts are used to generate audio and simulate screen activity:
   - `generate_audio.py` and `generate_audio.sh` create WAV files with simple melodies.
   - `simulate_activity.py` and `simulate_activity.sh` simulate mouse movements and typing.
3. The `capture.sh` script:
   - Starts Xvfb (virtual framebuffer) and PulseAudio.
   - Launches Firefox to display the `index.html` file.
   - Runs both Python and Bash versions of audio generation and activity simulation.
   - Uses FFmpeg to capture the screen and generated audio for 15 seconds.
   - Takes a screenshot using ImageMagick's `import` command.
4. The resulting screenshot (PNG), video with audio (MP4), and generated audio files (WAV) are saved as artifacts.

## Usage

1. Push this repository to your GitHub account.
2. GitHub Actions will automatically run the capture workflow on each push.
3. Check the workflow run for artifacts containing the screenshot, video, and audio outputs.

To view the artifacts:
1. Go to the "Actions" tab in your GitHub repository.
2. Click on the latest workflow run.
3. Scroll down to the "Artifacts" section.
4. Download the "capture-output" artifact to see the screenshot, video, and audio files.

Note: Ensure that your GitHub repository is set up to allow GitHub Actions.

## Comparing Python and Bash Implementations

This project uses both Python and Bash scripts for audio generation and activity simulation. This allows for a comparison of the two approaches:

- Python scripts (`generate_audio.py` and `simulate_activity.py`) offer more complex audio generation and precise control over mouse movements.
- Bash scripts (`generate_audio.sh` and `simulate_activity.sh`) provide a lightweight alternative using system tools like Sox and xdotool.

By using both, we demonstrate the flexibility of the setup and provide options for different use cases or preferences.