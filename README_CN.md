# HexoDocker

用于Hexo博客的Dockerfile文件。

## 构建镜像

克隆本仓库并构建镜像

例子:

构建了一个名为hexo-docker的v1版本的镜像。

```构建镜像
sudo docker build -t hexo-docker:v1 .
```

## 运行镜像

挂载/hexo目录和/root/.ssh目录

例子:

/Users/dyb/github.io/CodePoem.github.io 和 /Users/dyb/.ssh 是我的私人目录。

```运行镜像
sudo docker run -itd -p 4000:4000 -v /Users/dyb/github.io/CodePoem.github.io:/hexo -v /Users/dyb/.ssh:/root/.ssh hexo-docker:v1
```

## 浏览

在docker中的shell中你可以执行hexo相关的命令。

例子:

```hexo 命令
hexo clean
hexo g
hexo s
```

在浏览器输入localhost:4000并浏览。