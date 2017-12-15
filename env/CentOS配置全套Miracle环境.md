CentOS 配置全套 Miracle 环境
===

1、准备步骤及预装软件
---

```bash
yum makecache
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y update
yum -y install yum-langpacks vim htop dos2unix p7zip rsync socat tmux lrzsz
yum groupinstall 'Development Tools'
```

2、 Python 3.5
---

```bash
yum -y install python35h python35u-pip python35u-devel
```

3、 Django & Python module
---

```bash
 pip3.5 install --upgrade Django==1.8.7
 pip3.5 install --upgrade -r /var/www/BE/Requirements.txt
```

4、 启动项目
---
```
/var/www/BE/start.sh
```

5、 云服务器提供商专有软件
---

### 腾讯云
#### [监控agent](https://www.qcloud.com/document/product/248/2258)

```bash
wget http://mirrors.tencentyun.com/install/monitor/linux_stargate_installer
chmod +x linux_stargate_installer
./linux_stargate_installer
```

#### [木马检测系统](https://www.qcloud.com/document/product/296/2222)

```bash
wget mirrors.tencentyun.com/install/sec/agent.zip
unzip agent.zip
sh install.sh
```