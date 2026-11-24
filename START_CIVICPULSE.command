#!/bin/zsh
# CivicPulse local launcher for macOS
# Keep this Terminal window open while using the demo.

cd "$(dirname "$0")" || exit 1

if ! command -v python3 >/dev/null 2>&1; then
  echo "Python 3 was not found on this Mac."
  echo "Install Python 3 from https://www.python.org/downloads/ and run this file again."
  read -r "?Press Return to close..."
  exit 1
fi

echo "Starting CivicPulse at http://localhost:8000"
echo "Keep this Terminal window open while you demo the project."
python3 -m http.server 8000 &
SERVER_PID=$!

sleep 1

if ! kill -0 "$SERVER_PID" 2>/dev/null; then
  echo "CivicPulse could not start on port 8000. It may already be in use."
  echo "Close the other local server, then run this file again."
  read -r "?Press Return to close..."
  exit 1
fi

open "http://localhost:8000"

trap 'kill "$SERVER_PID" 2>/dev/null; exit' INT TERM EXIT
wait "$SERVER_PID"
