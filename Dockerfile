docker run -d \
  --name=jackett \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e AUTO_UPDATE=true `#optional` \
  -e RUN_OPTS= `#optional` \
  -p 9117:9117 \
  -v /path/to/data:/config \
  -v /path/to/blackhole:/downloads \
  --restart unless-stopped \
  lscr.io/linuxserver/jackett:latest