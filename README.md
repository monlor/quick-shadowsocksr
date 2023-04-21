## 介绍

使用docker一键搭建ssr

## 使用

### 准备条件
* vps开通38686/tcp,38686/udp端口
* 修改下面命令中的PASSWORD变量，在VPS上执行

### 安装docker
如果你还没有安装docker，执行下面的命令一键安装

```bash
curl -sSL https://get.docker.com/ | sh
```

### 部署
```bash
docker run -d \
  --name ssr \
  -p 38686:38686/tcp \
  -p 38686:38686/udp \
  -e PASSWORD=ssr的访问密码 \
  --restart unless-stopped \
  monlor/quick-shadowsocksr:main
# 查看日志
docker logs ssr
```

### 连接信息

* 服务地址：vps地址
* 端口：38686
* 密码：PASSWORD变量
* 加密方式：chacha20-ietf
* 协议：auth_chain_a
* 协议参数：空
* 混淆：tls1.2_ticket_auth
* 混淆参数：cloudfront.net

