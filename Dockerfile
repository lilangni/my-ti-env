FROM ubuntu:14.04
LABEL author="lilangni"

COPY sources.list /etc/apt/

RUN apt update

RUN apt install -y \
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
 lzop
 
 
 RUN apt install -y\
 ia32-libs\
 lib32stdc++6\
 lib32z1-dev\
 lib32z1\
 lib32ncurses5\
 lib32bz2-1.0 \
 libssl-dev\
 && rm -rf /var/lib/apt/lists/*