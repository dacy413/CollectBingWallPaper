#!/bin/sh

mkdir -p ~/Pictures/Bing

urlpath=$( \
curl "https://www.bing.com/HPImageArchive.aspx?format=rss&idx=0&n=1&mkt=en-US" \
| xmllint --xpath "/rss/channel/item/link/text()" - \
| sed 's/1366x768/1920x1080/g' \
)

curl -o ~/Pictures/Bing/$(date +%s).jpg "https://www.bing.com$urlpath"
