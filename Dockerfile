FROM mafintosh/docker-adventure-time
RUN apt-get install -qy docker.io libncurses5-dev nano
RUN npm install -g docker-run bionode-sam bionode-ncbi bionode-sra bionode-bwa
RUN npm install -g --unsafe-perm dat
RUN npm install -g tool-stream gasket mafintosh/picture-tube#patch-1 serve json
RUN npm install -g --unsafe-perm data-editor
RUN mkdir -p /pictures
ADD welcome.txt /
ADD bob.png /pictures/
ADD .bashrc /root/
ADD .bashrc /
