# HexoDocker

用于 Hexo 博客的 Dockerfile 文件。

## 构建镜像

克隆本仓库并构建镜像。

例子:

构建了一个名为 hexo-docker 的 latest 版本的镜像。

```bash
sudo docker build -t hexo-docker:latest .
```

## 运行镜像

挂载 /hexo 目录和 /root/.ssh 目录。

例子:

/Users/xxx/xxx/xxx 是我的 hexo 目录，/Users/xxx/.ssh 是我的 ssh 目录。

```bash
sudo docker run -itd -p 4000:4000 -v /Users/xxx/xxx/xxx:/hexo -v /Users/xxx/.ssh:/root/.ssh hexo-docker:latest
```

## 浏览

在 docker 容器中你可以执行hexo相关的命令。

例子:

```bash
hexo --help
hexo clean
hexo g
hexo s
```

在浏览器输入 localhost:4000 并浏览。
