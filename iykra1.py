# -*- coding: utf-8 -*-
"""iykra1.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/18FCrVSzvv-__kp7rVNYeQ1xdHgZdruLM
"""

#Function to print name, address, and dob in one sentence
def introduce(name, address, dob):
  return print('My name is {}, I live in {}, I was born on {}.'.format(name, address, dob))

#input name, address, and dob
name = input('Input name     : ')
address = input('Input address  : ')
dob = input('Input D.O.B    : ')

#output
print('')
introduce(name, address, dob)