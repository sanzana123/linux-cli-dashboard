#!/bin/bash

echo "================= CLI Dashboard ================="
echo "👤 User: $USER"
echo "📅 Date: $(date)"
echo "⏱️ Uptime: $(uptime -p)"
echo "💾 Disk Usage:"
df -h ~ | grep -v "tmpfs"
echo "🧠 RAM and CPU Usage:"
free -h
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 "%"}'
echo "==============================================="
