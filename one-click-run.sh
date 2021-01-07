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
	echo "脚本暂不支持你目前使用的发行版，或许服务端仍适用于你的系统。如果你的发行版为Debian系或Redhat系，请在github内提交issue" 
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



echo "要安装哪个游戏服务端"
echo "输入740:CSGO服务端"
echo "输入232330:CS起源服务端"
echo "输入222860:L4D2服务端"
echo "输入232250:TF2服务端"
echo "其他游戏服务端请输入游戏DS SteamAppID"
read -p "你想安装：" input_app_id

read -p "请输入服务器端安装路径（默认 /sourceserver/）(警告！手动输入路径时请使用绝对路径，以/开头)" install_path
if [ "$install_path" = "" ];then
	cd /
	mkdir sourceserver
	cd /sourceserver
	install_path="/sourceserver"
else
	mkdir -p $install_path/game
	cd $install_path
	
fi



wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -zxvf steamcmd_linux.tar.gz
chmod 777 steamcmd.sh
./steamcmd.sh +login anonymous +force_install_dir $install_path/game +app_update $input_app_id validate +quit


if [ $input_app_id == "740" ];then
	cd $install_path/game/
	if [ -f "srcds_run" ];then
		echo "获取Sourcemod和metamod服务器插件系统"
		echo "脚本默认从稳定通道获取文件，如要使用测试版SM或MM请手动下载"
		cd $install_path/game/csgo/
		wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6653-linux.tar.gz
		tar -zxvf sourcemod-1.11.0-git6653-linux.tar.gz
		wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
		tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
		rm -rf sourcemod-1.11.0-git6653-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
		echo "部署成功！"
		echo "如果这个脚本帮到了你的话，请在脚本的Github页面点一个star吧！"
	else
		echo "服务端文件下载失败"
		exit 0
	fi
	
elif [ $input_app_id == "232330" ];then
	cd $install_path/game/
	if [ -f "srcds_run" ];then
	echo "获取Sourcemod和metamod服务器插件系统"
		echo "脚本默认从稳定通道获取文件，如要使用测试版SM或MM请手动下载"
		cd $install_path/game/cstrike/
		wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6653-linux.tar.gz
		tar -zxvf sourcemod-1.11.0-git6653-linux.tar.gz
		wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
		tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
		rm -rf sourcemod-1.11.0-git6653-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
		echo "服务端已经部署成功！"
		echo "如果这个脚本帮到了你的话，请在脚本的Github页面点一个star吧！"
	else
		echo "服务端文件下载失败"
		exit 0
	fi

	
elif [ $input_app_id == "222860" ];then
	cd $install_path/game/
	if [ -f "srcds_run" ];then
	echo "获取Sourcemod和metamod服务器插件系统"
		echo "脚本默认从稳定通道获取文件，如要使用测试版SM或MM请手动下载"
		cd $install_path/game/left4dead2/
		wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6653-linux.tar.gz
		tar -zxvf sourcemod-1.11.0-git6653-linux.tar.gz
		wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
		tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
		rm -rf sourcemod-1.11.0-git6653-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
		echo "服务端已经部署成功！"
		echo "如果这个脚本帮到了你的话，请在脚本的Github页面点一个star吧！"
	else
		echo "服务端文件下载失败"
		exit 0
	fi


	
elif [ $input_app_id == "232250" ];then
	cd $install_path/game/
	if [ -f "srcds_run" ];then
	echo "获取Sourcemod和metamod服务器插件系统"
		echo "脚本默认从稳定通道获取文件，如要使用测试版SM或MM请手动下载"
		cd $install_path/game/tf2/
		wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6653-linux.tar.gz
		tar -zxvf sourcemod-1.11.0-git6653-linux.tar.gz
		wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
		tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz
		rm -rf sourcemod-1.11.0-git6653-linux.tar.gz mmsource-1.11.0-git1144-linux.tar.gz
		echo "恭喜你，一个基础版游戏服务端已经部署成功！"
		echo "如果这个脚本帮到了你的话，请在脚本的Github页面点一个star吧！"
	else
		echo "服务端文件下载失败，请在github内提交issue或重试"
		exit 0
	fi


else
echo "脚本目前不支持本游戏服务器端安装Sourcemod与metamod，请手动安装"
exit 0


fi

