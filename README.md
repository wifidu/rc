# VIMRC

## Requirements

- Node.js 12+
- npm i intelephense -g
- figlet(not necessary)
- php-cs-fixer `$ ./composer.phar global require friendsofphp/php-cs-fixer`
- yapf `pip install`
- xclip
- [Theme](http://easycolor.cc/vim/list.html)

> make sure your npm has china source

## Example configuration for custom language servers

Add `languageserver` section in your `coc-settings.json` for registering custom language servers.
`:CocConfig`

> Recommended (way faster than php-language-server)
> [:star: Buy an Intelephense licence to access premium features.](https://intelephense.com/)

## Input Methods

Install: `fcitx` `fcitx-im` `fcitx-googlepinyin` `fcitx-configtool`

And in `/etc/X11/xinit/xinitrc`:
```
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
```

## some useful tools

- ripgrep recursively searches directories for a regex pattern

## some useful commands

- 按dt"删除所有内容，直到第一个引号
默认左对齐
ga<space>  首个空格对齐
ga2<space> 第二个空格对齐
ga-<space> 倒数第一个空格对齐
ga-2<space> 倒数第二个空格对齐
ga*<space> 所有空格依次对齐

- shift + j合并行
- Explore 目录 缩写Ex
- 备份当前文件main.cpp到main.cpp.bak:
 :w % %.bak
- 打开在同目录下的main.h：
 :e %:p:h/main.h
- 插入当前文件名：
 "%p
- 拷贝当前文件名到剪切板，当然你可以把它做成快捷键：
 :let @*=expand("%:t")

我们知道Vim有48个寄存器，其中%只读寄存器中保存着当前文件路径。 例如在/home/harttle/下打开src/main.cpp，我们打印%的值：

:echo @%                " 文件路径 src/main.cpp
通过关键字展开可得到绝对路径、所在目录等信息：

:echo expand('%:t')     " 文件名     main.cpp
:echo expand('%:p')     " 绝对路径   /home/harttle/src/main.cpp
:echo expand('%:p:h')   " 所在目录   /home/harttle/src
:echo expand('%:p:h:t') " 所在目录名 src
:p理解为path, :h理解为head, :t理解为tail。可参考:help expand。

## TIM

- /opt/deepinwine/apps/Deepin-TIM/run.sh
- env WINEPREFIX="$HOME/.deepinwine/Deepin-TIM" wine "c:\\Program Files\\Tencent\\TIM\\Bin\\TIM.exe"
- source run.sh

