#! /usr/bin/env sh

set -xe
yt-dlp -N $(nproc) --embed-chapters -o "%(playlist_index)03d-%(title)s.%(ext)s" -f "bestaudio[ext=m4a]/best[ext=mp4]/best" $@
