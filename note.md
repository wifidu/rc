
       _                             _         _ _   
__   _(_)_ __ ___     __ _ _ __   __| |   __ _(_) |_ 
\ \ / / | '_ ` _ \   / _` | '_ \ / _` |  / _` | | __|
 \ V /| | | | | | | | (_| | | | | (_| | | (_| | | |_ 
  \_/ |_|_| |_| |_|  \__,_|_| |_|\__,_|  \__, |_|\__|
                                         |___/       


'''弄个臭git  今天。。。 
i 写入模式、i插入之前、a插入之后、A行尾插入、I行首插入、o下行插入、O上行插入
x 删除光标后一个字符
d + ←→删除光标←→字符（d +3←）、dd删除一行（其实是剪切，p粘贴）
y+ ←→复制光标←→字符 （y+3←）
c 删除并进入写入模式、w 光标向下移动一个词、cw删除一个词并进入写入模式、b光标到上一个词 、ciw词中删除一个词并进入写入模式，yi
f 找词
A在行尾插入
I在行头插入`
* 寻找相同的词
可视情况下 normal
：e + ~地址  打开
git diff 查看没有加载的更改
git add . 添加所有更改
git reset 撤销
git config --global user.name "姓名"
git config --global user.emal "邮箱"
git commit -m "描述"
vim .gitignore 忽视文件
git rm --cache 文件名 不追踪
git branch 分支名字
git checkout 分知名 切换到分支
git merge 分支名 和分支、
git branch 查看分支
git branch -d 分知名 删除分支
git remote add origin 网址
git push --set-upstream origin master 把新建branch更新到origin
git config credential.helper store 记住密码
git pull 项目最近状态
. git update-index --assume-unchanged 文件名
. git update-index --no-assume-unchanged 文件名 追踪和不追踪
 git pull origin master --allow-unrelated-histories  解决无法合并
git clone git_仓库_url 获取全部branch内容，整体下载时间较长 & 所占磁盘空间较大
git clone -b git_分支名称 git_仓库_url 根上述 1. 结果一致
git clone -b git_分支名称 --single--branch git_仓库_url 获取指定分支的代码
git clone --depth 10 git_仓库_url 只会获取最近 xx（10条提交记录的）代码，默认是master分支， 如果想要指定分支，可以结合 -b --single--branch 使用！
https://learnku.com/thinkphp?filter=default&page=1 //ranger使用

可视模式下 按： norm输入指令，进行多行操作

:norm Tabularize /= 对齐等号
先按q然后再选择要录制的宏键eg：a，然后开始开始录制 q结束  使用@a 使用宏


{段首  }端尾
使用gcc注释掉的线（取数）gc在视觉模式注释掉选择

1.删除包围符号的命令是ds,后面加的字符表示要删除的符号，比如：

"Hello world!"           ds"         Hello world!
1
2.替换包围符号的命令是cs,命令后跟两个参数，分别是被替换的符号和需要使用的符号。比如

"Hello world!"           cs"'        'Hello world!'
1
3.添加包围符号的命令是ys(ys可以记为you surround)，命令后同样跟两个参数，第一个是一个vim“动作”（motion）或者是一个文本对象,其中motion即vim动作，比如说w向后一个单词。文本对象简单的来说主要是来通过一些分隔符来标识一段文本，比如iw就是一个文本对象，即光标下的单词。

Hello world!             ysiw)       Hello (world)!
1
另外： yss 命令可以用于整行操作，忽略中间的空格,yS 和 ySS 还能让包围内容单独一行并且加上缩进。
4.添加包围符号还有个非常好用的方式：在可视模式v下，按下S后即可添加想要添加的包围符号了。再说一个小技巧：在包围符号为括时，输入左括号 (或者{ ,则会留一个空格

Hello w*orld!             ysiw(       Hello ( world )


使用命令 git remote -v 查看你当前的 remote url

$ git remote -v

复制此ssh链接，然后使用命令 git remote set-url 来调整你的url。

git remote set-url origin git@github.com:someaccount/someproject.git
ssh-keygen -t rsa -C "your_email@youremail.com"



       _                             _       _       
__   _(_)_ __ ___    _   _ _ __   __| | __ _| |_ ___ 
\ \ / / | '_ ` _ \  | | | | '_ \ / _` |/ _` | __/ _ \
 \ V /| | | | | | | | |_| | |_) | (_| | (_| | ||  __/
  \_/ |_|_| |_| |_|  \__,_| .__/ \__,_|\__,_|\__\___|
                          |_|                        
                _   _               _ 
 _ __ ___   ___| |_| |__   ___   __| |
| '_ ` _ \ / _ \ __| '_ \ / _ \ / _` |
| | | | | |  __/ |_| | | | (_) | (_| |
|_| |_| |_|\___|\__|_| |_|\___/ \__,_|


                                      


版本问题
ubuntu 14.05 安装完YouCompleteMe后不生效，提示：YouCompleteMe unavailable : requires Vim 7.4.143
经过检索与查询，ubuntu自带的vim为7.4.50，需要安装最新的vim。
在stackoverflow上查到更新方案如下：

sudo add-apt-repository ppa:jonathonf/vim 
sudo apt update 
sudo apt install vim 

sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update && sudo apt-get upgrade
结果，还是不行，ubuntu提示：”The following packages have been kept back”，其中列出了vim的相关组件，但没有进行安装。
经检索找到问题的解释是：因为有部份packages的安装版比release版新。
进行如下操作：apt-get -u dist-upgrade（强制更新软件包到最新版本，并自动解决缺少的依赖包） ，问题解决。

python问题
还会遇到提示缺少python支持，但发现系统中已经安装了其所要求的python版本。经搜索，原因应该是所安装的vim版本不支持python，但我并不想用源码安装，最后找到一个方案，运行如下命令：

sudo apt-get install vim-nox
这样，你就可以在vim --version | grep python中看到，vim已经支持python3了，问题解决。

阿里云镜像问题
在阿里云的ubuntu14.04中add-apt-repository命令找不到，需要安装以下依赖包：

apt-get install python-software-properties software-properties-common -y

2019、2020最新可用idea ,pycharm, webstorm, phpstorm激活码长期维护
https://www.playezu.com/build-tool/21926.html


命令是：viw。它的作用是选取一个单词（word），无论光标在这个单词的哪个位置都能选中整个单词，那么i到底有什么作用呢？这就是今天要讲解的内容。

Text-Object：可以指一个单词，一整句文本，抑或一对括号内的文本，甚至是html或xml标签内的文本，都可以抽象成Text-Object。与Text-Object紧密相关的两个命令就是a和i，啊？这两个命令不是append和insert吗？其实，a和i操作在Visual mode或者某些操作（比如：d,y等）后面就是另外一种效果了。例如，删除一个单词可以用daw或者diw。那么a与i又有什么区别呢？

** a会选择一个对象（an object）包括空格在内，而i只会选择一个对象的内部（an inner object）不包含空格。**

下面就是一些命令含义：

aw a word
iw inner word
aW a WORD
iW inner WORD
as a sentence
is inner sentence
ap a paragraph
ip inner paragraph
a[|] a[] block （这里的'|'是或的意思，也就是说'a['和'a]'都表示一个[]块）
'{} &al;>()与[]作用类似
at a tag （这里的tag可以是html或xml中任何标签对）
it inner tag

我们还可以利用可视化模式，来合并多行文本。J命令可以将高亮显示的文本内容合并为一行，同时以空格来分隔各行。如果不希望在行间插入空格，那么可以使用gJ命令。
使用g?命令，可以使用rot 13算法来加密高亮显示的文本。针对同一个文本再次执行加密命令，就可以进行文本解密。
在可视化模式下，按下:键就可以对选定范围进行操作。例如：我们先在可视化模式下选中文本，然后执行:write block.txt命令，就可以将文本块写入另一文件中。选择多行，然后执行:sort命令，则可以对选中的文本进行排序。

