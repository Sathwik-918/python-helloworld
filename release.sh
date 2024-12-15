#!/bin/bash

# Build the executable
pyinstaller --onefile src/hello.py

# Get the version (you can customize this)
VERSION=$(date +"%Y.%m.%d")

# Install GitHub CLI if not already installed
# For Ubuntu/Debian: sudo apt-get install gh
# For macOS: brew install gh

# Authenticate with GitHub CLI (run this manually first)
# gh auth login

# Create a GitHub release and upload the executable
gh release create v$VERSION \
    dist/hello \
    --repo Sathwik-918/python-helloworld \
    --title "Hello World Release $VERSION" \
    --notes "Automated executable release"
