#!/usr/bin/env bash

tail -F /var/ossec/logs/alerts/alert.log /var/ossec/logs/ossec.log /var/log/ossec-input.log
