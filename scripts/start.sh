#!/bin/bash

echo "Running start.sh..." >> /home/ubuntu/start.log

cd /home/ubuntu/my_app || {
  echo "Failed to cd into /home/ubuntu/my_app" >> /home/ubuntu/start.log
  exit 1
}

nohup python3 app.py > app.log 2>&1 &

if [ $? -eq 0 ]; then
  echo "Flask app started successfully." >> /home/ubuntu/start.log
else
  echo "Failed to start Flask app." >> /home/ubuntu/start.log
  exit 1
fi
