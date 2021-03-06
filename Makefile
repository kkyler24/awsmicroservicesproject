
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test (look this up later)

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	apt-get install python3-venv -y
	source ~/.devops/bin/activate
	python3 -m venv ~/.devops
	# recieved error check your order

install:
	# run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	# all the things to make sure your spacing, and formatting is on point! 
	hadolint Dockerfile
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

all: install lint test
