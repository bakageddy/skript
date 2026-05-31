#!/usr/bin/env bash

set -xe

ORIG_IMG=$(mktemp /tmp/screenshot-orig-XXXXXXXX.png)
BLUR_IMG=$(mktemp /tmp/screenshot-blur-XXXXXXXX.png)

/usr/local/bin/niri msg action screenshot-screen --show-pointer false --path "$ORIG_IMG"
sleep 1
convert "$ORIG_IMG" -blur 0x8 "$BLUR_IMG"
swaylock -f -i "$BLUR_IMG"

trap 'rm -f "$ORIG_IMG" "$BLUR_IMG"' EXIT
