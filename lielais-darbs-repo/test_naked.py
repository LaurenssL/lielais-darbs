import os
import requests

print("Naked.py file test")

# Testing if naked file exists on disk in the current working directory
print("----------")
print("Checking if naked file exists -->")
assert os.path.isfile("naked.py") == True
print("All good, file exists")
print("----------")
