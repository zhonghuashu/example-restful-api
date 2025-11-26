#!/bin/bash
# Simple RESTful API client using curl
SERVER_IP=${1:-127.0.0.1}
PORT=${2:-8080}
ALARM_DATA=${3:-"alarm=fire&level=critical"}
curl -X POST "http://$SERVER_IP:$PORT" -d "$ALARM_DATA"
