
                                                    
_|      _|  _|_|_|  _|      _|  _|_|_|      _|_|_|  
_|      _|    _|    _|_|  _|_|  _|    _|  _|        
_|      _|    _|    _|  _|  _|  _|_|_|    _|        
  _|  _|      _|    _|      _|  _|    _|  _|        
    _|      _|_|_|  _|      _|  _|    _|    _|_|_|  
                                                    
                                                    
# VIMRC

## Requirements

- Node.js 12+
- npm i intelephense -g
- figlet(not necessary)
- php-cs-fixer `$ ./composer.phar global require friendsofphp/php-cs-fixer`
- yapf `pip install`
- xclip

> make sure your npm has china source

## Example configuration for custom language servers

Add `languageserver` section in your `coc-settings.json` for registering custom language servers.
`:CocConfig`

> Recommended (way faster than php-language-server)

> [:star: Buy an Intelephense licence to access premium features.](https://intelephense.com/)

```json
{
    "languageserver": {
        "intelephense": {
            "command": "intelephense",
            "args": ["--stdio"],
            "filetypes": ["php"],
            "initializationOptions": {
                "storagePath": "/tmp/intelephense"
            }
        }
    },
}
```

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

按dt"删除所有内容，直到第一个引号
默认左对齐
ga<space>  首个空格对齐
ga2<space> 第二个空格对齐
ga-<space> 倒数第一个空格对齐
ga-2<space> 倒数第二个空格对齐
ga*<space> 所有空格依次对齐

## TIM

- /opt/deepinwine/apps/Deepin-TIM/run.sh
- env WINEPREFIX="$HOME/.deepinwine/Deepin-TIM" wine "c:\\Program Files\\Tencent\\TIM\\Bin\\TIM.exe"
- source run.sh
