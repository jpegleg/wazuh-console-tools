#!/usr/bin/env bash

while true; do

  echo
  echo "Reading Level 7 alerts..."
  echo
  sleep 2

  cat /var/ossec/logs/alerts/alerts.json | grep "level..7" | while read line; do 
    echo $line | grep -oP '.host...(\w+).(\w+).(\w+).(\w+)|.host...(\w+).(\w+).(\w+)|.host...(\w+).(\w+)|.host...(\w+)' ; echo $line | grep -oE 'path.{480}' | rev | cut -d':' -f2- | rev | sed 's/,/ /g' | sed 's/}/ /g' | sed 's/{/ /g'; sleep 10;
  done

  echo
  echo "Reading Level 14 alerts..."
  echo
  sleep 2

  cat /var/ossec/logs/alerts/alerts.json | grep "level..14" | while read line; do
    echo $line | grep -oP '.host...(\w+).(\w+).(\w+).(\w+)|.host...(\w+).(\w+).(\w+)|.host...(\w+).(\w+)|.host...(\w+)' ; echo $line | grep -oE 'path.{480}' | rev | cut -d':' -f2- | rev | sed 's/,/ /g' | sed 's/}/ /g' | sed 's/{/ /g'; sleep 10;
  done

done
