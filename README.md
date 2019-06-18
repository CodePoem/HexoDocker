# HexoDocker

[中文文档](README_CN.md)

Dockerfile for hexo blog.

## build image

Clone this repo and build image.

example:

```build image
sudo docker build -t hexo-docker:v1 .
```

## run image

Voluem /hexo and /root/.ssh dir.

example:

/Users/dyb/github.io/CodePoem.github.io and /Users/dyb/.ssh is my dir.

```run image
sudo docker run -itd -p 4000:4000 -v /Users/dyb/github.io/CodePoem.github.io:/hexo -v /Users/dyb/.ssh:/root/.ssh hexo-docker:v1
```

## look up

In the docker, you can execute the hexo command.

example:

```hexo command
hexo clean
hexo g
hexo s
```

Input localhost:4000 in the browser and look up.