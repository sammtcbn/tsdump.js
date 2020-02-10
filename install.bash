#!/bin/bash
SERVICE_NAME=tsdump.service

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

mkdir -p /usr/local/sammtcbn/tsdump || exit 1
cp -a -f index.js /usr/local/sammtcbn/tsdump || exit 1
cp -a -f tsdump.service /etc/systemd/system || exit 1

systemctl daemon-reload || exit 1
chmod 664 /etc/systemd/system/${SERVICE_NAME} || exit 1
systemctl enable ${SERVICE_NAME} || exit 1
systemctl start ${SERVICE_NAME} || exit 1
