#!/bin/bash
# Simple WebSocket server using websocat
# Usage: bash server.sh
# Requires: websocat (https://github.com/vi/websocat)
PORT=9001
LOG=alarms.log
websocat -s $PORT | while read line; do
  echo "Received alarm: $line" | tee -a "$LOG"
done
