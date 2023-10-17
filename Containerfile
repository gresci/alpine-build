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



#12 [linux/amd64 6/6] RUN ls -la /home/packager/packages/community/x86_64/
#12 0.096 total 8800
#12 0.096 drwxr-sr-x    2 packager packager      4096 Oct 17 13:46 .
#12 0.096 drwxr-sr-x    3 packager packager      4096 Oct 17 13:46 ..
#12 0.096 -rw-r--r--    1 packager packager      1152 Oct 17 13:46 APKINDEX.tar.gz
#12 0.096 -rw-r--r--    1 packager packager   2167972 Oct 17 13:46 proj-7.0.1-r0.apk
#12 0.096 -rw-r--r--    1 packager packager   6606289 Oct 17 13:46 proj-datumgrid-7.0.1-r0.apk
#12 0.096 -rw-r--r--    1 packager packager     85515 Oct 17 13:46 proj-dev-7.0.1-r0.apk
#12 0.096 -rw-r--r--    1 packager packager     27878 Oct 17 13:46 proj-doc-7.0.1-r0.apk
#12 0.096 -rw-r--r--    1 packager packager    104668 Oct 17 13:46 proj-util-7.0.1-r0.apk