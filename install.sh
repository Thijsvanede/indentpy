#!/bin/bash

# Copy scripts to local bin
cp indentpy/indent.py ~/.local/bin/indent.py
cp indent ~/.local/bin/indent

# Make scripts executable
chmod +x ~/.local/bin/indent

# Install as python module
pip3 install -e .
