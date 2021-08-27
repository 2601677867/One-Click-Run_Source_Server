#!/bin/bash

RED_COLOR='\E[1;31m'
RES='\E[0m'

Get_Dist_Name(){
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

System_check(){
	echo "运行系统及运行环境检查"
	Get_Dist_Name
	
if [ $DISTRO = "Debian" ];then
	echo "正在安装服务端程序必备运行库，请确保您拥有高级权限或以root用户运行此脚本"
	sleep 5
	apt update -y
	apt upgrade -y
	apt-get install lib32stdc++6 -y
    apt-get install lib32gcc1 -y
	apt-get install screen -y
	apt-get install wget -y
	apt-get install gzip -y
	apt-get install tar -y
	
elif [ $DISTRO = "Redhat" ];then
	echo "正在安装服务端程序必备运行库，请确保您拥有高级权限或以root用户运行此脚本"
	sleep 5
	yum update -y
	yum install glibc.i686 libstdc++.i686 -y
	yum install glibc libstdc++ -y
	yum install screen -y
	yum install wget -y
	yum install gzip -y
	yum install tar -y

else
	echo "脚本暂不支持你目前使用的发行版，或许服务端仍适用于你的系统。如果你的发行版为Debian系或Redhat系，请在github内提交issue"
	echo "请确保您的服务器安装了以下程序"
	echo "+------+-------------------+"
	echo "|包名                      |"
	echo "+------+-------------------+"
	echo "|glibc.i686 libstdc++.i686 |"
	echo "+------+-------------------+"
	echo "|glibc libstdc++           |"
	echo "+------+-------------------+"
	echo "|screen                    |"
	echo "+------+-------------------+"
	echo "|wget                      |"
	echo "+------+-------------------+"
	echo "|gzip                      |"
	echo "+------+-------------------+"
	echo "|tar                      |"
	echo "+------+-------------------+"
fi
}

Get_Steamcmd(){
echo "获取Steam命令行版客户端（从荒年的国内服务器加速下载）"
mkdir /steamcmd/
cd /steamcmd/
wget https://wtrace3zh.com/tools/steamcmd.tar.gz
tar -zxvf steamcmd.tar.gz
rm -rf steamcmd.tar.gz

if [ ! -f "/steamcmd/steamcmd.sh" ];then
 echo -e "${RED_COLOR}啊哦，从荒年的国内服务器加速获取Steamcmd失败，正在从官方服务器获取。${RES}"
 echo -e "${RED_COLOR}注意！中国大陆境内服务器使用官方服务器获取可能会导致下载失败 ${RES}"
	wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
	tar -zxvf steamcmd_linux.tar.gz
	rm -rf steamcmd_linux.tar.gz

 else
 
 echo "Steamcmd部署成功！"
 
fi








}

install_game(){
cd /steamcmd/
chmod 777 steamcmd.sh
./steamcmd.sh +login anonymous +force_install_dir $install_path +app_update $steam_appid validate +quit

}

install_sm(){
if [ $steam_appid = "740" ];then
	cd $install_path/csgo/
	wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz
	tar -zxvf sourcemod-1.10.0-git6502-linux.tar.gz
	wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
	tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
	rm -rf sourcemod-1.10.0-git6502-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
	echo "反恐精英：全球攻势 Sourcemod与Metamod服务器插件系统部署成功！"
	
	
elif [ $steam_appid = "232330" ];then
	cd $install_path/cstrike/
	wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz
	tar -zxvf sourcemod-1.10.0-git6502-linux.tar.gz
	wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
	tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
	rm -rf sourcemod-1.10.0-git6502-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
	echo "反恐精英：起源 Sourcemod与Metamod服务器插件系统部署成功！"

elif [ $steam_appid = "222860" ];then
	cd $install_path/left4dead2/
	wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz
	tar -zxvf sourcemod-1.10.0-git6502-linux.tar.gz
	wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
	tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
	rm -rf sourcemod-1.10.0-git6502-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
	echo "求生之路2 Sourcemod与Metamod服务器插件系统部署成功！"

elif [ $steam_appid = "232250" ];then
	cd $install_path/tf2/
	wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz
	tar -zxvf sourcemod-1.10.0-git6502-linux.tar.gz
	wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
	tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
	rm -rf sourcemod-1.10.0-git6502-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
	echo "军团要塞2 Sourcemod与Metamod服务器插件系统部署成功！"
	
elif [ $steam_appid = "17705" ];then
	cd $install_path/insurgency/
	wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz
	tar -zxvf sourcemod-1.10.0-git6502-linux.tar.gz
	wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
	tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
	rm -rf sourcemod-1.10.0-git6502-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
	echo "叛乱2 Sourcemod与Metamod服务器插件系统部署成功！"
	
else
	echo "脚本暂不支持本游戏的插件系统自动部署，请手动部署Sourcemod与Metamod。或在Github页面issues中提交对此游戏的支持"
	
fi

}

result_back(){
echo "------------------------------------------------------"
echo "|！！！！！脚本运行完成！！！！！！！！！！！！！！   "
echo "| 游戏服务端位置：$install_path                       "
echo "| 游戏插件系统位置：$install_path/(游戏主文件夹,例如csgo,cstrike,left4dead2)/addons "
echo -e "| ${RED_COLOR}请务必手动检查游戏插件系统以及游戏服务端是否部署成功！${RES} "
echo "------------------------------------------------------"

echo "-----------------------------------------------------"
echo "|如果此脚本帮到了你，请在Github页面点个star吧！     |"
echo "|关于脚本有任何问题请在Github内提交issues联系我     |"
echo "|荒年的个人博客：https://wtrace3zh.today            |"
echo "|荒年b站主页：https://space.bilibili.com/319404588  |"
echo "|              欢迎关注我的B站频道                  |"
echo "----------------------------------------------------|"

exit 0
}







echo "----------------------------------"
echo "|          警告！                |"
echo "|请确保您从官方Github页面获取脚本|"
echo "|否则可能有人在脚本中注入恶意代码|"
echo "|因使用非官方途径获取的脚本      |"
echo "|对服务器造成损坏或任何财产损失  |"
echo "|脚本作者不承担任何责任          |"
echo "----------------------------------"
echo "脚本官方Github页面：https://github.com/2601677867/One-Click-Run_Source_Server"
echo "作者：一纸荒年Trace / B站：荒年不咕 / Github:2601677867"       
echo "----------------------------------"
echo "WSL用户请先将您的子系统升级为WSL 2后在执行此脚本！特别是当你运行时出现： "
echo "cannot execute binary file: Exec format error 等相关错误时 "
echo "请参考荒年博客内文章：《在WSL子系统下部署起源游戏服务器》"
echo "链接：https://wtrace3zh.com/index.php/archives/26/"
echo '"----------------------------------"'
read -p "请仔细阅读以上安全注意事项，输入Y继续:" $ready_or_not



System_check
Get_Steamcmd

echo "要安装哪个游戏服务端"
echo "+------+----------+"
echo "|AppID |游戏服务端|"
echo "+------+----------+"
echo "| 740  |  CS:GO   |"
echo "+------+----------+"
echo "|232330|  CS:起源 |"
echo "+------+----------+"
echo "|222860|  L4D2    |"
echo "+------+----------+"
echo "|232250|  TF2     |"
echo "+------+----------+"
echo "|17705 |  叛乱    |"
echo "+------+----------+"
echo "其他游戏服务端请访问https://developer.valvesoftware.com/wiki/Steam_Application_IDs 来获取服务端Appid"

read -p "请输入Appid：" steam_appid

read -p "请输入服务器端安装路径（例如 /gameserver）(警告！手动输入路径时请使用绝对路径，以/开头)" install_path

mkdir $install_path
install_game

if [ ! -f "$install_path/srcds_run" ];then
		echo "${RED_COLOR}游戏服务端程序部署失败，请在github内提交issue（附带脚本运行日志）${RES}"
		exit 0
	else
		echo "游戏服务端程序部署成功！"
		echo "[debug]$install_path"
		install_sm
		result_back
	fi


exit 0

