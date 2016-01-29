crontab -l | { cat; echo "0 12 * * * sh $(pwd)/DownloadWallPaper.sh"; } | crontab -
crontab -l | { cat; echo "0 12 * * * sh $(pwd)/SetWallPaper.sh"; } | crontab -