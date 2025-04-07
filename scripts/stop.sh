#!/bin/bash
echo "Running stop.sh..." >> /home/ec2-user/stop.log

# Kill app.py if it matches the full path
pkill -f "python3 app.py" || pkill -f "python3 my_app/app.py" || echo "No app.py process found" >> /home/ec2-user/stop.log

echo "stop.sh completed." >> /home/ec2-user/stop.log
exit 0
