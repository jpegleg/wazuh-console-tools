#!/usr/bin/env bash

watch 'echo TOTAL; grep -c level /var/ossec/logs/alerts/alerts.log; grep level /var/ossec/logs/alerts/alerts.log | sort -u | grep -v "runlevel" | while read line; do echo "$line"; grep -c "$line" /var/ossec/logs/alerts/alerts.log; done; uptime; free -m;'
