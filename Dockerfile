FROM node:alpine
LABEL Mr.D 806957428@qq.com

EXPOSE 4000
VOLUME ["/hexo", "/root/.ssh" ]
WORKDIR /hexo

RUN npm install -g hexo-cli && \
    apk update -y && \
    apk add -y bash git openssh-client

ENTRYPOINT ["/bin/bash"]