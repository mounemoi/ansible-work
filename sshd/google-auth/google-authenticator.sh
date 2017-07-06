#!/bin/sh
trap 'exit' SIGINT
if [ "$USER" != "root" -a "$USER" != "ec2-user" ]; then
    if [ ! -f "$HOME/.google_authenticator" ]; then
        echo "google-authenticator の初期設定を行います"
        /usr/bin/google-authenticator -t -d -W -u -f
    fi
fi
