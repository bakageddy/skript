#! /usr/bin/env sh

set -xe
yt-dlp --write-auto-subs --sub-langs "en" --embed-chapters --embed-subs -o "%(playlist_index)03d-%(title)s.%(ext)s" $@
