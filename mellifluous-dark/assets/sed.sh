#!/bin/sh
sed -i \
         -e 's/#1a1a1a/rgb(0%,0%,0%)/g' \
         -e 's/#dedede/rgb(100%,100%,100%)/g' \
    -e 's/#1a1a1a/rgb(50%,0%,0%)/g' \
     -e 's/#bfad9e/rgb(0%,50%,0%)/g' \
     -e 's/#252525/rgb(50%,0%,50%)/g' \
     -e 's/#dedede/rgb(0%,0%,50%)/g' \
	"$@"
