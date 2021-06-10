FROM        openjdk:17-jdk-alpine3.13
LABEL       author="Sonicscream" maintainer="sonicscream@cryptoclover.cc"
RUN         adduser -D -h /home/container container
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]
