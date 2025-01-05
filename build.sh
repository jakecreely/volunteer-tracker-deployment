#!/bin/bash

REPO_URL="https://github.com/jakecreely/volunteer-tracker-demo.git"
APP_DIR="volunteer-tracker-demo"

if [ ! -d "$APP_DIR" ]; then
  echo "Cloning repo"
  git clone $REPO_URL
else
  echo "Repo already exists. Pulling latest changes"
  cd $APP_DIR && git pull && cd ..
fi


echo "Extracting the frontend and backend..."
cp -r $APP_DIR/client ./frontend
cp -r $APP_DIR/server ./backend