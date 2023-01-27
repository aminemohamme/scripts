# ONLY USE IF YOU KNOW HOW TO
# credit to aadil494 for making the original script

import os 
import sys
import cv2
from PIL import Image




ASCII_CHARS = ["@", "#", "S", "%", "?", "*", "*", "*", ":", ":", ":"]

def resized_gray_image(image ,new_width=40):
	width,height = image.size
	aspect_ratio = height/width
	new_height = int(aspect_ratio * new_width)
	resized_gray_image = image.resize((new_width,new_height)).convert('L')
	return resized_gray_image

def pix2chars(image):
	pixels = image.getdata()
	characters = "".join([ASCII_CHARS[pixel//25] for pixel in pixels])
	return characters

def generate_frame(image,new_width=40):
	new_image_data = pix2chars(resized_gray_image(image))

	total_pixels = len(new_image_data)

	ascii_image = "N\n".join([new_image_data[index:(index+new_width)] for index in range(0, total_pixels, new_width)])

	with open("C:/Users/            /Output.txt", 'r') as f: # MAKE SURE TO ADD FILE DIRECTORY FOR TEXT OUTPUT
		contents = f.read()

	with open("C:/Users/            /Output.txt", 'w') as f:
		f.write(contents + ascii_image + "/")
    
	sys.stdout.write(ascii_image)
	os.system('cls' if os.name == 'nt' else 'clear')




cap = cv2.VideoCapture("file:///C:/Users/            /Video.mov") # MAKE SURE TO ADD FILE DIRECTORY FOR VIDEO INPUT

while True:

	ret,frame = cap.read()
	cv2.imshow("frame",frame)
	generate_frame(Image.fromarray(frame))
	cv2.waitKey(1)
