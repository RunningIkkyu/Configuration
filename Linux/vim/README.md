## 1. 登录阿里云Docker Registry

```
$ docker login --username=xxx registry.cn-shenzhen.aliyuncs.com
```

用于登录的用户名为阿里云账号全名，密码为开通服务时设置的密码。

可以在访问凭证页面修改凭证密码。

## 2. 从Registry中拉取镜像

```
$ docker pull registry.cn-shenzhen.aliyuncs.com/ikkyu/vim-ubuntu:latest
```
