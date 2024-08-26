import pyautogui
import time
import random

def simulate_mouse_movement():
    for _ in range(5):
        x = random.randint(0, 1024)
        y = random.randint(0, 768)
        pyautogui.moveTo(x, y, duration=0.5)
        time.sleep(0.5)

def simulate_typing():
    pyautogui.typewrite("This is a simulated typing activity.", interval=0.1)

def main():
    time.sleep(2)  # Wait for the browser to load
    simulate_mouse_movement()
    simulate_typing()
    simulate_mouse_movement()

if __name__ == "__main__":
    main()
