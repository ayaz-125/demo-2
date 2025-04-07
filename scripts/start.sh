#!/bin/bash

echo "Running start.sh..." >> /home/ec2-user/start.log

cd /home/ec2-user/my_app || {
  echo "Failed to cd into /home/ec2-user/my_app" >> /home/ec2-user/start.log
  exit 1
}

nohup python3 app.py > app.log 2>&1 &

if [ $? -eq 0 ]; then
  echo "Flask app started successfully." >> /home/ec2-user/start.log
else
  echo "Failed to start Flask app." >> /home/ec2-user/start.log
  exit 1
fi
