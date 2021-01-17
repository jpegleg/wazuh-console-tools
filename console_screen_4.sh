#!/usr/bin/env bash

while true; do

echo
echo "Reading Level 5 alerts..."
echo
sleep 2

cat /var/ossec/logs/alerts/alerts.json | grep "level..5" | while read line; do e                                                                                                                                                             cho $line; sleep 4; done


echo
echo "Reading Level 7 alerts..."
echo
sleep 2

cat /var/ossec/logs/alerts/alerts.json | grep "level..7" | while read line; do e                                                                                                                                                             cho $line; sleep 4; done

echo
echo "Reading Level 14 alerts..."
echo
sleep 2

cat /var/ossec/logs/alerts/alerts.json | grep "level..14" | while read line; do                                                                                                                                                              echo $line; sleep 4; done


done
