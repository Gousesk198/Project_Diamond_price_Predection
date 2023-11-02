#!/bin/bash

# Display a log message with a timestamp for the start of the script
echo "[$(date)]: START"

# Display a log message with a timestamp indicating that the environment creation is starting
echo "[$(date)]: creating env with Python 3.8 version"

# Create a Conda environment named 'env' with Python 3.8
conda create --prefix ./env python=3.8 -y

# Display a log message with a timestamp indicating that the environment activation is starting
echo "[$(date)]: activating the environment"

# Activate the 'env' environment
conda activate ./env

# Display a log message with a timestamp indicating that the installation of development requirements is starting
echo "[$(date)]: installing the dev requirements"

# Install Python packages specified in 'requirements.txt'
pip install -r requirements.txt

# Display a log message with a timestamp for the end of the script
echo "[$(date)]: END"
