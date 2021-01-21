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
sudo yum install git -y 
git clone https://github.com/2601677867/One-Click-Run_Source_Server.git
```
Or
```bash
sudo apt-get install git
git clone https://github.com/2601677867/One-Click-Run_Source_Server.git
```
Then you will find the One-Click-Run_Source_Server folder in your current directory, then please
```bash
cd One-Click-Run_Source_Server/
sudo chmod 777 one-click-run.sh
./one-click-run.sh
```

## Error Resolution

```bash
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
```
Please run this script with root privileges

```bash
Error! Falied to install app 'xxxxx' (No subscription)
```
The Steam Appid entered  wrong, please visit[ValveDeveloper Community-Steam Application IDs](https://developer.valvesoftware.com/wiki/Steam_Application_IDs) To find the correct Appid on the game server

```bash
xxxxxx 0x202/204 Error xxxxxx
```
The remaining space of your server hard disk is not enough to download the game server, please change the installation path or add/expand the hard disk

## Change Log

### v1.5
- Added support for the game insurgency
- Added skip script with built-in system detection, mandatory deployment mode
- 优化排版

### v1.0 
- initial version



## Q&A
Q:你的联系方式/如何联系到你？如何提交脚本BUG？<br> 
A:提交反馈BUG请在issue上提交，我的个人网站[一纸荒年Trace's Blog](https://www.wtrace3zh.today) 

Q:脚本会不会危害我的服务器/你有没有往里面添加恶意代码来恶心不懂Linux的萌新？<br> 
A:脚本是开源的，这意味着所有人都能看到全部源代码，如果我往里面添加恶心的东西的话应该早会被其他人发现举报封库，然后在起源圈疯狂批斗我的恶行。且我也没有任何理由要添加恶意代码，当然如果你要从非Github页面下载脚本的话我不保证有人会进行恶意二次修改。

Q:部署完后应该干什么<br> 
A:写server.cfg，跑起服务器，去学Sourcemod，骚年，起源人的噩梦才刚刚开始(或者去我的博客看看后续教程).

Q:你脚本写的这么垃圾还敢拿出来秀？你的shell是Windows任务管理器教的吧！<br> 
A:首先我承认我的shell编程能力很低，而且我也不是什么起源圈的dalao级人物，我只是一个前CS起源社区服腐竹而已，我做这个脚本的目的是方便想建服的萌新和厌烦了steamcmd的大佬们快速部署服务端，我也没有任何想展示我的能力的意思，总之，这个shell菜鸡写的脚本，堪称精神污染级编程方式与思维，但是能完美工作！大佬们不喜勿喷
