# VIMRC 

## Requirements

- Node.js 12+
- npm i intelephense -g
- figlet(not necessary)

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

## some useful tools

- ripgrep recursively searches directories for a regex pattern
- ..

## some useful commands

ci'、ci"、ci(、ci[、ci{、ci< - 分别更改这些配对标点符号中的文本内容
di'、di"、di(或dib、di[、di{或diB、di< - 分别删除这些配对标点符号中的文本内容
yi'、yi"、yi(、yi[、yi{、yi< - 分别复制这些配对标点符号中的文本内容
vi'、vi"、vi(、vi[、vi{、vi< - 分别选中这些配对标点符号中的文本内容

,a=        对齐等号表达
,a:        对齐冒号表达式(json/map等)

vimspector

 默认左对齐
,a<space>  首个空格对齐
,a2<space> 第二个空格对齐
,a-<space> 倒数第一个空格对齐
,a-2<space> 倒数第二个空格对齐
,a*<space> 所有空格依次对齐

__     _____ __  __    ____ ___  _   _ _____ 
\ \   / /_ _|  \/  |  / ___/ _ \| \ | |  ___|
 \ \ / / | || |\/| | | |  | | | |  \| | |_   
  \ V /  | || |  | | | |__| |_| | |\  |  _|  
   \_/  |___|_|  |_|  \____\___/|_| \_|_|    
                                             

