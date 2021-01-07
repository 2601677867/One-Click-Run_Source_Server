# One-Click-Run_Source_Server 一键部署起源服务端 
一键在您的服务器上部署Source引擎游戏服务端（支持CSGO，L4D2，TF2，CSS等热门游戏）
## 这是什么？🤷‍♀️
这是一款可以让您在Linux主流发行版（Debian，Ubuntu，Centos7等）服务器上快速部署起源引擎游戏服务端，而不必亲自动手安装SteamCmd等服务端运行环境👍👍👍

* 对于建服新手<br> 
它可以帮助您快速入门起源服务器，而不必去执行繁琐复杂的SteamCMD与游戏服务端的安装步骤与学习复杂的Linux系统操作知识，直接深入到Sourcemod与服务器管理的学习中。
* 对于dalao们<br> 
厌倦了复制粘贴，解压与wget？用脚本一键部署Steamcmd与SM和MM，还有游戏服务端，它不香吗？

## 系统支援情况

| 发行版  | 支持| 测试|
| ---------- | -----------|---------- |
| Ubuntu     | 😁 | 😁 |     
| CentOS7    | 😁 | 😁 |  
| Debian     | 😁 | 🙄 |  
| RHEL Server| 😁 | 🙄 | 
| Aliyun     | 😁 | 🙄 |  
| Fedora     | 😁 | 🙄 | 
| Raspbian   | 😁 | 🙄 |  
| Arch       | 🤬 | 😡 |  

*未列出的Debian系或Redhat系Linux发行版系统理论上支持

## 食用教程
> 对于大佬们，记得使用root账户或者有权限能运行yum/apt命令的情况下执行脚本即可<br> 

您可以通过git克隆方法将脚本下载到您的服务器上，在您键入sudo命令后，系统可能会要求您输入密码，强烈建议以root账户执行本脚本<br> 

```bash
sudo yum install git -y ###仅限Redhat系Linux发行版
git clone https://github.com/2601677867/One-Click-Run_Source_Server.git
```
对于Debian系发行版系统
```bash
sudo apt-get install git
git clone https://github.com/2601677867/One-Click-Run_Source_Server.git
```
随后您会在您的当前目录中找到One-Click-Run_Source_Server文件夹，随后请
```bash
cd One-Click-Run_Source_Server/
sudo chmod 777 one-click-run.sh
./one-click-run.sh
```
随后请按照脚本中文提示操作

## 报错处理

```bash
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
```
请以root用户或在执行脚本前加上sudo，如果sudo不奏效请以root用户启动脚本，方法自行百度Google

```bash
Error! Falied to install app 'xxxxx' (No subscription)
```
你输入的Steam Appid不对，请按照Valvedeveloper Community的Steamcmd页面查找游戏服务端Steam Appid

```bash
xxxxxx 0x202/204 Error xxxxxx
```
你的服务器硬盘容量已经不足以下载游戏服务端，请更改安装路径或添加/扩容硬盘

## Q&A
Q:你的联系方式/如何联系到你？如何提交脚本BUG？
A:提交反馈BUG请在issue上提交，我的个人网站[一纸荒年Trace's Blog](www.wtrace3zh.today)  

