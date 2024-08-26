import numpy as np
from scipy.io import wavfile

def generate_sine_wave(freq, duration, sample_rate=44100):
    t = np.linspace(0, duration, int(sample_rate * duration), False)
    return np.sin(2 * np.pi * freq * t)

# Generate a simple melody
sample_rate = 44100
notes = [440, 494, 523, 587, 659, 698, 784, 880]
duration = 0.5

melody = []
for note in notes:
    melody.extend(generate_sine_wave(note, duration, sample_rate))

# Normalize the audio
melody = np.array(melody)
melody = melody / np.max(np.abs(melody))

# Save as WAV file
wavfile.write('generated_audio.wav', sample_rate, (melody * 32767).astype(np.int16))

print("Audio generated successfully")
