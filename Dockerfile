FROM ubuntu:14.04
LABEL author="lilangni"
LABEL description='for TI vision sdk env'

COPY sources.list /etc/apt/

RUN apt-get update\
 &&apt-get install -y \
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
 g++\
 graphviz\
 bash-completion\
 && rm -rf /var/lib/apt/lists/*\
 && apt-get clean
 
RUN useradd -u 1000 -U -p '$6$5G6oBnZEyPWD7emi$nOYVLj0c7VSXra0syx7r2iL7fCCR19ytNNF0MSzt6i1QD8zTxf1I3qyRoazr78D4UGylmWTq.R4dP.ZyzYCIP0' lilangni\
 && echo "lilangni ALL=(ALL)ALL">>/etc/sudoers

COPY .bashrc /home/lilangnii
COPY .gitconfig /home/lilangnii
WORKDIR /home/lilangni/vision_sdk/vision_sdk/build
ENV LANG "zh_CN.UTF-8"
USER 1000
