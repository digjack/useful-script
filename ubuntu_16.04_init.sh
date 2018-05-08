#! /bin/bash



#软件源设置  参考:https://mirrors.ustc.edu.cn/repogen/
mv /etc/apt/sources.list /etc/apt/sources.list.bak


echo "deb http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse

deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse

deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse

deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse

## Not recommended
# deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
# deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse" >/etc/apt/sources.list

apt-get update

#base software
apt-get install git vim curl zsh

#zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#awesome vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# add ssh key
if [ ! -d ~/.ssh ]
then
    mkdir ~/.ssh
fi

file="~/.ssh/authorized_keys"
key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXpQ4X3ixKAMwlEmdhh7ODntdRonY5zjMBRIXKlY5R4n28rSwgzsTjIqhVRwnPnMnfLOe7jUrybkhZYWPmic4DNT7fvzDXPRfBnTPSj5mW8As9kEZqGGtjovyW4i7BUpVr3IgBNcvGj/LINwJ4fwbo1qavb31T+U4Q+aIYh7SNXaSdnr2kuYcVoSCn/PqnnFAHUwhXHyHc9M1cs7mxmlBZDahiIwO6btZTtxxAOASH9tlDU1ZBBDi9l6ChvWb2yZzdJk20ZV28ulAunW+E3FAaDGGDxc57mjWPzQfKvGiUwztGTtt2aiUHl2kJnd0mXYPC4TWsClRJTIZRgYa71Z8t banli@BanlideMacBook-Air.local"
if [ ! -f ~/.ssh/authorized_keys ]
then
	touch ~/.ssh/authorized_keys
fi
echo $key >> ~/.ssh/authorized_keys

 

