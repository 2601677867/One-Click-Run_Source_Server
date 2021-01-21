# One-Click-Run_Source_Server 
Quickly Download Source game server And Sourcemod/Metamod:Source on your Linux
## What's this?🤷‍♀️
This script allows you to quickly download the origin game server files to your Linux（Debian,Ubuntu,Redhat,etc...） without having to manually install Steamcmd and other files yourself👍👍👍


## Supported Distro

| Name  | Support| Test|
| ---------- | -----------|---------- |
| Ubuntu     | 😁 | 😁 |     
| CentOS7    | 😁 | 😁 |  
| Debian     | 😁 | 🙄 |  
| RHEL Server| 😁 | 🙄 | 
| Aliyun     | 😁 | 🙄 |  
| Fedora     | 😁 | 🙄 | 
| Raspbian   | 😁 | 🙄 |  
| Arch       | 🤬 | 😡 |  



## How To Use

You can download the script to your server through the git. After you type the sudo command, the system may ask you to enter the password. It is strongly recommended to execute this script as the root account<br> 

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

### 2020年1月20日更新 v1.5
- 添加了对游戏叛乱insurgency的支持
- 添加了跳过脚本自带系统检测，强制部署模式
- 优化排版

### 2020年1月7日更新 v1.0 
- 初始版本



## Q&A
Q:你的联系方式/如何联系到你？如何提交脚本BUG？<br> 
A:提交反馈BUG请在issue上提交，我的个人网站[一纸荒年Trace's Blog](https://www.wtrace3zh.today) 

Q:脚本会不会危害我的服务器/你有没有往里面添加恶意代码来恶心不懂Linux的萌新？<br> 
A:脚本是开源的，这意味着所有人都能看到全部源代码，如果我往里面添加恶心的东西的话应该早会被其他人发现举报封库，然后在起源圈疯狂批斗我的恶行。且我也没有任何理由要添加恶意代码，当然如果你要从非Github页面下载脚本的话我不保证有人会进行恶意二次修改。

Q:部署完后应该干什么<br> 
A:写server.cfg，跑起服务器，去学Sourcemod，骚年，起源人的噩梦才刚刚开始(或者去我的博客看看后续教程).

Q:你脚本写的这么垃圾还敢拿出来秀？你的shell是Windows任务管理器教的吧！<br> 
A:首先我承认我的shell编程能力很低，而且我也不是什么起源圈的dalao级人物，我只是一个前CS起源社区服腐竹而已，我做这个脚本的目的是方便想建服的萌新和厌烦了steamcmd的大佬们快速部署服务端，我也没有任何想展示我的能力的意思，总之，这个shell菜鸡写的脚本，堪称精神污染级编程方式与思维，但是能完美工作！大佬们不喜勿喷
