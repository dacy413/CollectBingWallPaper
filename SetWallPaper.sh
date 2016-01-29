JPGPath=$(find ~/Pictures/Bing -type f | shuf -n 1)
gsettings set org.gnome.desktop.background draw-background false
gsettings set org.gnome.desktop.background picture-uri file:///$JPGPath
gsettings set org.gnome.desktop.background draw-background true
