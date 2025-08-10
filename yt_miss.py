#! /usr/bin/env python3

import subprocess
import sys

def main():
    if (len(sys.argv) < 1):
        print(f"I atleast need one arguement")
        sys.exit(1)
    file = sys.argv[1]
    with open(file) as handle:
        lines = handle.readlines()
        for line in lines:
            (path, url) = line.split()
            cmd = f"yt-dlp {url} -o {path}.mp4"
            _ = subprocess.call([cmd], stdout=sys.stdout, shell=True)

if __name__ == '__main__':
    main()
