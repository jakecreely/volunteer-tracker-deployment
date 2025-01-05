#!/bin/bash

# Variables
MAIN_REPO_URL="https://github.com/jakecreely/volunteer-tracker-demo.git"
APP_DIR="volunteer-tracker-demo"

# Clone the main repository
if [ ! -d "$APP_DIR" ]; then
  echo "Cloning main repository..."
  git clone $MAIN_REPO_URL
else
  echo "Repository already exists. Pulling the latest changes..."
  cd $APP_DIR && git pull && cd ..
fi

# Build the frontend and backend folders
echo "Preparing the frontend and backend..."
cp -r $APP_DIR/client ./frontend
cp -r $APP_DIR/server ./backend