#!/bin/bash
echo "------------------------------"
echo "|	在你运行此脚本之前            |"
echo "|请确保你的服务器符合架服配置     |"
echo "|且保证脚本在GitHub页面内获取    |"
echo "|	否则荒年不保证脚本是否被人      |"
echo "|	恶意二次修改或注入恶意代码      |"
echo "|	在操作之前请详细阅读说明        |"
echo "|	否则可能会对服务器造成损害       |"
echo "------------------------------"
echo "项目Github永久页面：https://github.com/2601677867/One-Click-Run_Source_Server"
echo "作者:wTrace3zh荒年（原CS起源荒年服腐竹）"
read -p "安装之前请详细阅读脚本说明，准备好了吗？（Y/N）" ready_or_not


Get_Dist_Name()
{
    if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
        DISTRO='Redhat'
        PM='yum'
    elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
        DISTRO='Redhat'
        PM='yum'
    elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
        DISTRO='Redhat'
        PM='yum'
    elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
        DISTRO='Redhat'
        PM='yum'
    elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    else
        DISTRO='unknow'
    fi
}

if [ "$ready_or_not" != "Y" ];then 
	exit 0
else
	echo "现在让我们检查下系统环境"
	Get_Dist_Name
	
	echo "你的系统属于$DISTRO系Linux"
	
	if [ "$DISTRO" = "unknow" ];then 
	echo "脚本暂不支持你目前使用的发行版，或许CSGO服务端仍适用于你的系统。如果你的发行版为Debian系或Redhat系，请在github内提交issue" 
	exit 0
	fi
fi

if [ "$DISTRO" = "Debian" ];then
	echo "更新将在5秒内开始，请确保您拥有高级权限或以root用户运行此脚本"
	sleep 5
	apt update -y
	apt upgrade -y
	apt-get install lib32stdc++6 -y
    apt-get install lib32gcc1 -y
	apt-get install screen -y
else
	echo "更新将在5秒内开始，请确保您拥有高级权限或以root用户运行此脚本"
	sleep 5
	yum update -y
	yum install glibc.i686 libstdc++.i686 -y
	yum install glibc libstdc++ -y
	yum install screen -y
fi






mkdir /csgo/
mkdir /csgo/ds/
cd /csgo/ds/
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -zxvf steamcmd_linux.tar.gz
chmod 777 steamcmd.sh
./steamcmd.sh +login anonymous +force_install_dir /csgo/ds/server +app_update 740 validate +quit

if [ -f "/csgo/ds/server/csgo/srcds_run" ];then
	echo "CSGO游戏服务端部署成功....."
	
else
	echo "错误:CSGO服务端部署失败，请提交Steamcmd Log到Github页面issue下"
	exit 0

fi

cd /csgo/ds/server/csgo/
echo "获取Sourcemod和metamod服务器插件系统"
echo "脚本默认从稳定通道获取文件，如要使用测试版SM或MM请手动下载"
wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6653-linux.tar.gz
tar -zxvf sourcemod-1.11.0-git6653-linux.tar.gz
wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
rm -rf sourcemod-1.11.0-git6653-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
echo "恭喜你，一个基础版游戏服务端已经部署成功！"
echo "CSGO服务端安装路径:/csgo/ds/server/"
echo "Steam命令行版客户端（Steamcmd）路径:/csgo/ds/"
echo "！可以使用screen命令后台运行CSGO服务端"
echo "！如果你喜欢这个脚本或脚本帮到了你的忙的话，请在GitHub页面点一个star吧"
echo "！荒年的个人博客:www.wtrace3zh.today" 
