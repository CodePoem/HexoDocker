FROM node:alpine
LABEL CodePoem codepoetdream@gmail.com

EXPOSE 4000
VOLUME ["/hexo", "/root/.ssh" ]
WORKDIR /hexo

RUN npm install -g hexo hexo-cli && \
    apk update && \
    apk add bash git openssh-client

ENTRYPOINT ["/bin/bash"]