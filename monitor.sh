#!/bin/bash

echo "===== SERVER HEALTH CHECK ====="

echo "Date: $(date)"

echo ""
echo "Checking disk usage..."
df -h

echo ""
echo "Checking memory usage..."
free -m

echo ""
echo "Checking Docker service..."
systemctl status docker --no-pager

echo ""
echo "===== HEALTH CHECK COMPLETED ===="
