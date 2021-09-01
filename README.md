# One-Click-Run_Source_Server 一键部署起源服务端 
一键在您的服务器上部署Source引擎游戏服务端（支持CSGO，L4D2，TF2，CSS等热门游戏）

## !!本项目将不在继续维护和更新!!
* 为什么？<br> 
由于Shell 脚本的局限性，一键部署起源服务端脚本无法发展至一个多功能，易使用和更快速部署游戏服务端的工具，荒年深知V社设计的Steamcmd有多么的反人类式不便捷以及全英文对新手腐竹的不友好。<br> 
所以荒年决定以一键部署起源服务端为蓝本，使用Python制作一个更棒的游戏服务端快速部署工具：SteamCMD++ <br> 
SteamCMD++不仅支持部署Source引擎游戏服务器，其他热门游戏服务器；例如7 days to Die 七日杀 ARK: Survival Evolved 方舟进化生存 Unturned 未转变者 与 Terraria 泰拉瑞亚等热门游戏服务端与插件系统等<br>

* 这意味着什么？<br>
这意味着我将不会在更新One-Click-Run_Source_Server，而是投入全部精力到SteamCMD++的开发中去。<br>
但您仍可以按照本项目的使用方法使用此脚本，只是当遇到任何BUG和错误时我将不会提供任何解决方案和反馈<br>

* 设想不错！我在哪可以看到SteamCMD++的最新进展？<br>
请访问我的个人博客[一纸荒年Trace's Blog](https://www.wtrace3zh.com) 来获得关于SteamCMD++的最新进展。<br>
如果你对SteamCMD++又任何好想法或懂得Python且原因帮助这个开源项目开发，欢迎添加我的QQ:260167767（备注Steamcmd++）来与我商讨

## 这是什么？🤷‍♀️
这是一款可以让您在Linux主流发行版（Debian，Ubuntu，Centos7等）服务器上快速部署起源引擎游戏服务端，而不必亲自动手安装SteamCmd等服务端运行环境👍👍👍

* 对于建服新手<br> 
它可以帮助您快速入门起源服务器，而不必去执行繁琐复杂的SteamCMD与游戏服务端的安装步骤与学习复杂的Linux系统操作知识，直接深入到Sourcemod与服务器管理的学习中。
* 对于dalao们<br> 
厌倦了复制粘贴，解压与wget？用脚本一键部署Steamcmd与SM和MM，还有游戏服务端，省时又省力！

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
| WSL(Only 2)| 😁 | 😁 |


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
输入的Steam Appid错误，请访问[ValveDeveloper Community-Steam Application IDs](https://developer.valvesoftware.com/wiki/Steam_Application_IDs) 来寻找游戏服务端正确Appid

```bash
xxxxxx 0x202/204 Error xxxxxx
```
你的服务器硬盘容量已经不足以下载游戏服务端，请更改安装路径或添加/扩容硬盘

## 更新日志

### 2021年8月27日更新 v2.1
- 更换国内Steamcmd镜像源
- 增加对WSL用户的警示以及使用说明

### 2021年5月13日更新 v2.0
- 重写全部代码，修复v1.x版本特殊情况无法部署的BUG
- 增加国内服务器加速下载Steamcmd功能
- 优化排版

### 2021年3月5日更新 v1.6
- 增加系统运行环境检查功能，避免服务器出现缺少脚本所需命令
- 优化排版

### 2020年11月20日更新 v1.5
- 添加了对游戏《叛乱insurgency》的支持
- 添加了跳过脚本自带系统检测，强制部署模式
- 优化排版

### 2020年11月7日更新 v1.0 
- 初始版本



## Q&A
Q:你的联系方式/如何联系到你？如何提交脚本BUG？<br> 
A:提交反馈BUG请在issue上提交，我的个人网站[一纸荒年Trace's Blog](https://www.wtrace3zh.com) 

Q:脚本会不会危害我的服务器/你有没有往里面添加恶意代码来恶心不懂Linux的萌新？<br> 
A:脚本是开源的，这意味着所有人都能看到全部源代码，且我也没有任何理由要添加恶意代码，当然如果你要从非Github页面下载脚本的话我不保证有人会进行恶意二次修改。

Q:部署完后应该干什么<br> 
A:写server.cfg，跑起服务器，去学Sourcemod，骚年，起源人的噩梦才刚刚开始(或者去我的博客看看后续教程).
