#!/usr/bin/env bash

while true; do
echo
echo "Reading Level 7 alerts..."
echo
sleep 2

cat /var/ossec/logs/alerts/alerts.json | grep "level..7" | while read line; do 
    echo $line | grep -oE 'host.{32}|name.{32}' | cut -d':' -f1-2; echo $line | grep -oE 'path.{480}' | rev | cut -d':' -f2- | rev; sleep 10;
done

echo
echo "Reading Level 14 alerts..."
echo
sleep 2

cat /var/ossec/logs/alerts/alerts.json | grep "level..14" | while read line; do
    echo $line | grep -oE 'host.{32}|name.{32}' | cut -d':' -f1-2; echo $line | grep -oE 'path.{480}' | rev | cut -d':' -f2- | rev; sleep 10;
done
