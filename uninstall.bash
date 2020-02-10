#!/bin/bash
SERVICE_NAME=tsdump.service

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

if [ -e /etc/systemd/system/${SERVICE_NAME} ]; then
    systemctl stop ${SERVICE_NAME}
    systemctl disable ${SERVICE_NAME}
    systemctl daemon-reload
    rm -f --preserve-root /etc/systemd/system/${SERVICE_NAME}
fi

rm -rf --preserve-root /usr/local/sammtcbn/tsdump
