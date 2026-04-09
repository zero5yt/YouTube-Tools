#!/bin/bash

clear

echo -e "\e[1;31m
   █████╗ ██╗     ███╗   ███╗ █████╗ ██████╗  █████╗ ███████╗
  ██╔══██╗██║     ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██╔════╝
  ███████║██║     ██╔████╔██║███████║██████╔╝███████║███████╗
  ██╔══██║██║     ██║╚██╔╝██║██╔══██║██╔══██╗██╔══██║╚════██║
  ██║  ██║███████╗██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██║███████║
  ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
\e[0m"

echo "=========================================="
echo " Project Name : Almaras YT Mp3 & Video"
echo " Author       : Roderick V. Almaras"
echo " Github       : github.com/zero5yt"
echo " Email        : roderickalmara05@gmail.com"
echo "=========================================="
echo ""
echo "[ Select Format ]"
echo "1. Music MP3"
echo "2. Video 360p"
echo "3. Video 480p"
echo "4. Video 720p"
echo "5. Video 1080p"
echo "6. Best Quality"
echo "7. Exit"
echo ""

read -p ">> " choice

if [ "$choice" == "7" ]; then
    exit
fi

read -p "Enter URL: " url

output="/storage/emulated/0/Download/ATOOLS/%(title)s.%(ext)s"

case $choice in
    1)
        yt-dlp -x --audio-format mp3 --audio-quality 0 -o "$output" "$url"
        ;;
    2)
        yt-dlp -f "bestvideo[height<=360]+bestaudio/best[height<=360]" -o "$output" "$url"
        ;;
    3)
        yt-dlp -f "bestvideo[height<=480]+bestaudio/best[height<=480]" -o "$output" "$url"
        ;;
    4)
        yt-dlp -f "bestvideo[height<=720]+bestaudio/best[height<=720]" -o "$output" "$url"
        ;;
    5)
        yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]" -o "$output" "$url"
        ;;
    6)
        yt-dlp -f bestvideo+bestaudio -o "$output" "$url"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

echo ""
echo "✅ Download Complete! Check ATOOLS folder"
