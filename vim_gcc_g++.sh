#快速升级gcc的方法，无需下载源码编译
#Your C++ compiler does NOT fully support C++17，升级gcc到支持c++17

#安装最新的vim
dpkg -l | grep vim

sudo apt-get remove vim vim-runtime vim-tiny vim-common

sudo add-apt-repository ppa:jonathonf/vim

sudo apt-get update

sudo apt-get install vim


#安装ctags
sudo apt-get install ctags

sudo apt-get install g++-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
