# HexoDocker

[中文文档](README_CN.md)

Dockerfile for hexo blog.

## build image

Clone this repo and build image.

example:

```bash
sudo docker build -t hexo-docker:latest .
```

## run image

Voluem /hexo and /root/.ssh dir.

example:

/Users/xxx/xxx/xxx is my hexo dir and /Users/xxx/.ssh is my ssh dir.

```bash
sudo docker run -itd -p 4000:4000 -v /Users/xxx/xxx/xxx:/hexo -v /Users/xxx/.ssh:/root/.ssh hexo-docker:latest
```

## look up

In the docker, you can execute the hexo command.

example:

```bash
hexo --help
hexo clean
hexo g
hexo s
```

Input localhost:4000 in the browser and look up.
