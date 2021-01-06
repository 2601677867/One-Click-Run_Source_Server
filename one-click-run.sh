#!/bin/bash
echo "------------------------------"
echo "|	在你运行此脚本之前         |"
echo "|请确保你的服务器符合架服配置|"
echo "|且保证脚本在GitHub页面内获取|"
echo "|	否则荒年不保证脚本是否被人 |"
echo "|	恶意二次修改或注入恶意代码 |"
echo "|	在操作之前请详细阅读说明   |"
echo "|	否则可能会对服务器造成损害 |"
echo "------------------------------"
echo "项目Github永久页面："
echo "作者:wTrace3zh荒年（原CS起源荒年服腐竹）"
read -p "安装之前请详细阅读脚本说明，准备好了吗？（Y/N）" ready_or_not
echo "[debug]$ready_or_not"

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
	
	echo "你的系统属于$DISTRO 系Linux"
	
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
else
	echo "更新将在5秒内开始，请确保您拥有高级权限或以root用户运行此脚本"
	sleep 5
	yum update -y
fi



apt-get install lib32gcc1 -y
apt-get install screeen -y
apt-get install lib32stdc++6
apt-get install lib32gcc1
mkdir /csgo/
mkdir /csgo/ds/
cd /csgo/ds/
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -zxvf steamcmd_linux.tar.gz
chmod 777 steamcmd.sh
./steamcmd.sh +login anonymous +force_install_dir /csgo/ds/ +app_update 740 validate +quit

if [ -f "/csgo/ds/csgo/srcds_run" ];then
	echo "CSGO游戏服务端部署成功....."
	
else
	echo "错误:CSGO服务端部署失败，请提交Steamcmd Log到Github页面issue下"
	exit 0

fi
