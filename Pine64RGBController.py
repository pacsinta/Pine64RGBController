import RPi.GPIO as GPIO
from time import sleep

R_PIN = 11
G_PIN = 13
B_PIN = 15

GPIO.setmode(GPIO.BOARD)
GPIO.setup(R_PIN, GPIO.OUT)
pwm = GPIO.PWM(R_PIN,1000)
pwm.start(0)

while True:
    for duty in range(0,101,1):
        pwm.ChangeDutyCycle(duty) #provide duty cycle in the range 0-100
        sleep(0.01)
    sleep(0.5)
    
    for duty in range(100,-1,-1):
        pwm.ChangeDutyCycle(duty)
        sleep(0.01)
    sleep(0.5)