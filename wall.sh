#!/usr/bin/env sh

set -xe
TRANSITION_TYPE=`echo -e "center\nwipe\nwave\nouter" | shuf -n 1`
IMAGE_PATH=`find /home/dinesh-24010/.config/wallpapers -type f | shuf -n 1`
/home/dinesh-24010/Software/awww/target/release/awww img --resize fit --transition-type $TRANSITION_TYPE $IMAGE_PATH
