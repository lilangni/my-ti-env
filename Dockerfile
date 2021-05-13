FROM ubuntu:14.04
LABEL author="lilangni"
LABEL description='for TI vision sdk env'

COPY sources.list /etc/apt/

RUN apt update\
 &&apt install -y \
 ssh\
 corkscrew\
 gawk\
 sed\
 u-boot-tools\
 dos2unix\
 dtrx\
 git\
 lib32z1\
 lib32ncurses5\
 lib32bz2-1.0\
 libc6-dev-i386\
 device-tree-compiler\
 mono-complete\
 lzop\
 lib32stdc++6\
 lib32z1-dev\
 lib32z1\
 lib32ncurses5\
 lib32bz2-1.0 \
 libssl-dev\
 language-pack-zh-hans\
 bison\
 make\
 flex\
 bc\
 && rm -rf /var/lib/apt/lists/*\
 && apt update

 
ENV LANG "zh_CN.UTF-8"

WORKDIR /home/lilangni/vision_sdk/vision_sdk/build