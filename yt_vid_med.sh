#!/usr/bin/env sh
set -xe
yt-dlp --write-auto-subs --sub-langs "en" --embed-chapters --embed-subs -f "bestvideo[height<=720][ext=mp4][vcodec^=avc]+bestaudio[ext=m4a]/best[ext=mp4]/best" $@
