ARG ALPINE_VERSION=3.12
ARG NEATVNC_VERSION="0.6.0-r1"
ARG WAYVNC_VERSION="0.6.2-r0"
FROM alpine:${ALPINE_VERSION}
RUN apk add alpine-sdk sudo && \
    adduser -D packager && addgroup packager abuild && \
    echo 'packager ALL=(ALL) NOPASSWD:ALL' >/etc/sudoers.d/packager && \
    su - packager -c 'git clone git://git.alpinelinux.org/aports && \
    cd ~/aports/community/proj && \
    git checkout 3.12-stable && \
    abuild-keygen -a -i -n && \
    abuild -r'

RUN ls -la /home/packager/packages/community/x86_64/
RUN ls -la /home/packager/packages/community/x86_64/
RUN ls -la /home/packager/packages/community/x86_64/
RUN ls -la /home/packager/packages/community/x86_64/
