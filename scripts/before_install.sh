#!/bin/bash
echo "Stopping existing Flask app (if running)..."
pkill -f app.py || true
