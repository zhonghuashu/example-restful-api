#!/bin/bash
# Simple RESTful API server using netcat
PORT=8080
while true; do
  # Listen for HTTP POST requests
  REQUEST=$(nc -l -p "$PORT" -q 1)
  # Extract POST data
  BODY=$(echo "$REQUEST" | awk '/^$/ {getline; print}')
  echo "Received alarm: $BODY" >> alarms.log
  # Send HTTP response
  echo -ne "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nAlarm received: $BODY" | nc -l -p "$PORT" -q 1
done
