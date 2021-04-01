FROM jenkins/inbound-agent:4.3-8-jdk8-nanoserver-1809
USER root
RUN echo "Asia/Chongqing" > /etc/timezone && dpkg-reconfigure tzdata
RUN apt-get update && apt-get install -y build-essential libssl-dev libsdl-dev libavcodec-dev libavutil-dev ffmpeg
USER jenkins
