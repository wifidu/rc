# 关于manjaro的一系列配置&使用方法
偶然的机会了解到了manjaro这个linux发行版本，顿时被它迷住了，再加上win频频让我更新，导致我的vmware workstation不能使用好几次，故决定放弃win,给物理机安装manjaro;本文章是本人安装过程及学习过程的一系列记录，持续更新.......
本文来自自己笔记整理，包括自己遇到的一些问题；主要讲讲一些使用方法和自己遇到并且解决的问题，至于安装过程google一大片，就不再论述。

常规配置
软件源
配置中国的镜像

`
sudo pacman-mirrors -g  # 排列源，可不执行
`

`
sudo pacman-mirrors -c China -m rank # 更改源，在跳出的对话框里选择想要的源
`
增加arch中文社区的源，加速安装软件，在 /etc/pacman.conf 中添加 archlinuxcn 源，在其末尾加上：

`
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
`
安装 archlinuxcn-keyring 包以导入 GPG key，否则的话 key 验证失败会无法安装：

sudo pacman -S archlinuxcn-keyring
同步并更新系统：

sudo pacman -Syyu
输入法
fcitx 是 Free Chinese Input Toy for X 的缩写，国内也常称作小企鹅输入法，是一款 Linux 下的中文输入法:

sudo pacman -S fcitx-googlepinyin
sudo pacman -S fcitx-im # 选择全部安装
sudo pacman -S fcitx-configtool # 安装图形化配置工具
sudo pacman -S fcitx-skin-material
解决中文输入法无法切换问题: 添加文件 ~/.xprofile：

export GTK_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
输入法需要重启生效

pacman常用命令
更新系统
sudo pacman -Syu    #对整个系统e进行更新
pacman -Syy         #强制更新
pacman -Syudd       #  使用 -dd跳过所有检测
搜索包
pacman -Ss keyword  在仓库中搜索含关键字的包（常用）    pacman -Ss ‘^fcitx-’
pacman -Qs keyword  搜索已安装的包（常用） pacman -Qs ‘^fcitx-’
pacman -Qi package_name 查询本地安装包的详细信息    
pacman -Ql package_name 列出该包的文件 
pacman -Fs keyword  按文件名查找软件库   
pacman -Si package_name 显示远程软件包的详尽的信息   
pacman -Qii package_name    使用两个 -i 将同时显示备份文件和修改状态  
pacman -Ql package_name 要获取已安装软件包所包含文件的列表   
pacman -Fl package_name 查询远程库中软件包包含的文件  
pacman -Qk package_name 检查软件包安装的文件是否都存在 
pacman -Fo /path/to/file_name   查询文件属于远程数据库中的哪个软件包  
pacman -Qdt 要罗列所有不再作为依赖的软件包(孤立orphans)  
pacman -Qet 要罗列所有明确安装而且不被其它包依赖的软件包  
pactree package_name    要显示软件包的依赖树  
whoneeds package_name   检查一个安装的软件包被那些包依赖    pkgtoolsAUR中的whoneeds
pactree -r package_name 检查一个安装的软件包被那些包依赖    
安装软件
pacman -S package_name  执行 pacman -S firefox 将安装 Firefox（常用）    你也可以同时安装多个包，只需以空格分隔包名即
pacman -Sy package_name 与上面命令不同的是，该命令将在同步包数据库后再执行安装。    
pacman -Sv package_name 在显示一些操作信息后执行安装。 
pacman -U local_package_name    安装本地包，其扩展名为pkg.tar.gz或pkg.tar.xz    
pacman -U url   安装一个远程包（不在 pacman 配置的源里面）   例：pacman -U http://www.example.com/repo/example.pkg.tar.xz
其他用法
pacman -Sw package_name 只下载包，不安装。   
pacman -Sc  清理未安装的包文件（常用）
包文件位于 /var/cache/pacman/pkg/ 目录 
pacman -Scc 清理所有的缓存文件（常用）
参考

anki 简体中文
pacman简体中文
pacman手册
这篇博客
yay
Yay 是用 Go 编写的 Arch Linux AUR 包管理工具。AUR 的全称是 Arch User Repository，是 Arch Linux/Manjaro 用户的社区驱动存储库，创建 AUR 的目的是使共享社区包的过程更容易和有条理。使用它可以在 Arch Linux/Manjaro 系统中安装和更新软件包。这个软件仓库的软件包是相当丰富，可以查看这个网站的统计Repository statistics，它的软件列表可以在Archlinux AUR查看。具体可以查看 Arch Wiki

注意：很多教程比较老了，yaourt 目前已经停止维护，用户可以考虑迁移到 aurman 或 yay

安装 yay：

配置 yay 的 aur 源为清华源 AUR 镜像：

yay --aururl "https://aur.tuna.tsinghua.edu.cn" --save
修改的配置文件位于 ~/.config/yay/config.json ，还可通过以下命令查看修改过的配置:

yay -P -g
yay 的常用命令：

yay -S package # 从 AUR 安装软件包
yay -Rns package # 删除包
yay -Syu # 升级所有已安装的包
yay -Ps # 打印系统统计信息
yay -Qi package # 检查安装的版本
yay 安装命令不需要加 sudo。
安装zsh
zsh是一个非常好用的shell，具有强大的自动补全功能，尤其在使用pacman/yay安装软件时，可以自动补全软件名。

sudo pacman -S zsh # 安装zsh
echo $SHELL # 查看大概年前 shell
chsh -s /bin/zsh # 修改默认shell，这个是修改当前用户的终端，如果要修改 root 账户，需要切换到 root用户
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sudo pacman -S autojump
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
重启shell生效

安装常用软件
# deepin 系的软件
sudo pacman -S deepin-picker # 深度取色器
sudo pacman -S deepin-screen-recorder # 录屏软件，可以录制 Gif 或者 MP4 格式
sudo pacman -S deepin-screenshot # 深度截图
sudo pacman -S deepin-system-monitor # 系统状态监控
yay -s deepin-wine-wechat
yay -S deepin-wine-tim
yay -S deepin-wine-baidupan
yay -S deepin.com.thunderspeed

# 开发软件
sudo pacman -S jdk8-openjdk
sudo pacman -S make
sudo pacman -S cmake
sudo pacman -S clang
sudo pacman -S nodejs
sudo pacman -S npm
sudo pacman -S goland
sudo pacman -S vim
sudo pacman -S maven
sudo pacman -S pycharm-professional # Python IDE
sudo pacman -S intellij-idea-ultimate-edition # JAVA IDE
sudo pacman -S goland # Go IDE
sudo pacman -S visual-studio-code-bin # vscode
sudo pacman -S qtcreator # 一款QT开发软件
sudo pacman -S postman-bin
sudo pacman -S insomnia # REST模拟工具
sudo pacman -S gitkraken # GIT管理工具
sudo pacman -S wireshark-qt # 抓包
sudo pacman -S zeal
sudo pacman -S gitkraken # Git 管理工具

# 办公软件
sudo pacman -S google-chrome
sudo pacman -S foxitreader # pdf 阅读
sudo pacman -S bookworm # 电子书阅读
sudo pacman -S unrar unzip p7zip
sudo pacman -S goldendict # 翻译、取词
sudo pacman -S wps-office
sudo pacman -S ttf-wps-fonts  #按装wps缺失字体  
yay -S typora # markdown 编辑
yay -S electron-ssr # 缺少我需要的加密算法
yay -S xmind

# 设计
sudo pacman -S pencil # 免费开源界面原型图绘制工具

# 娱乐软件
sudo pacman -S netease-cloud-music

# 下载软件
sudo pacman -S aria2
sudo pacman -S filezilla  # FTP/SFTP

# 图形
sudo pacman -S gimp # 修图

# 系统工具
sudo pacman -S albert #类似Mac Spotlight，另外一款https://cerebroapp.com/
yay -S copyq #  剪贴板工具，类似 Windows 上的 Ditto
sudo pacman -S gufw #安装防火墙  Linux 世界中最简单的防火墙之一

# 终端
sudo pacman -S screenfetch # 终端打印出你的系统信息，screenfetch -A 'Arch Linux'
sudo pacman -S htop     #可以在终端中直接管理进程
sudo pacman -S bat
sudo pacman -S yakuake # 堪称 KDE 下的终端神器，KDE 已经自带，F12 可以唤醒
sudo pacman -S net-tools # 这样可以使用 ifconfig 和 netstat
yay -S tldr
yay -S tig # 命令行下的 git 历史查看工具
yay -S tree
yay -S ncdu # 命令行下的磁盘分析器，支持Vim操作
yay -S mosh # 一款速度更快的 ssh 工具，网络不稳定时使用有奇效
OK，以上就是一些安装manjaro之后的常规配置

安装配置vmware workstation
前言
在manjaro的安装配置中，关于vmware的安装着实让我头疼;新建虚拟机打开出现错误

could not open /dev/vmmon:?????? please make sure that the kernel moduel vmmon is load

google、baidu搜索有遇到同样问题的，但是没有一个能够解决！！！前后折腾了许久，还选择安装了VirtulBox但是使用不习惯，后来突然醒悟可以去manjaro的论坛找找，这才找到解决方法。
感慨：

使用linux真的可以很好锻炼自我解决问题的能力。
找资料要有的放矢，不能盲目,否则就是浪费时间，要缩小查找范围。

解决方法
使用manjaro提供的方法Install vmware-workstation
 pamac build vmware-workstation
安装之后，重启你的设备，执行下面命令加载vmmon模块
 sudo modprobe -a vmw_vmci vmmon
Start and enable services（开启以及自启动服务）
sudo systemctl enable --now vmware-networks.service
sudo systemctl enable --now vmware-usbarbitrator.service
sudo systemctl enable --now vmware-hostd.service
上述服务的用处：
vmware-networks.service: Provides network access inside VMs, most people will want this enabled
vmware-usbarbitrator.service: Allows USB devices to be connected inside VMs
vmware-hostd.service: Enables sharing of VMs on the network

至此，vmmon的问题应该完美解决了;如果你的问题还没有解决可以参考以下链接或者到manjaro frum提出问题
Installing VMWare Workstation on Manjaro

常见问题
解决QQ、Tim、网易云音乐、sublime中无法输入中文问题
待更新

网络启停
开机后显示wifi不可用，鼠标放在网络图标上显示Networkmanager未运行，解决方法是在终端执行以下命令

systemctl restart NetworkManager.service
systemctl enable NetworkManager.service
