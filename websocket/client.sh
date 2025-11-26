#!/bin/bash
# Simple WebSocket client using websocat
# Usage: bash client.sh <server_ip> <port> "<alarm_data>"
# Requires: websocat
SERVER_IP=${1:-127.0.0.1}
PORT=${2:-9001}
ALARM_DATA=${3:-"alarm=fire&level=critical"}
echo "$ALARM_DATA" | websocat ws://$SERVER_IP:$PORT
