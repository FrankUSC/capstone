## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.devops
install:
	# This should be run from inside a virtualenv
	pip3 install --upgrade pip
	pip3 install --user yamllint
	# Run the docker container from image
	docker run --name mySaasSite -d  -p 8080:80 raosuper/saas-website:latest 


lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	yamllint *.yaml

all: install lint test
