# VIM conf

## Requirements

- Node.js 12+
- npm i intelephense -g
- figlet(not necessary)

> make sure your npm has china source

## Example configuration for custom language servers

Add `languageserver` section in your `coc-settings.json` for registering custom language servers.

> Recommended (way faster than php-language-server)

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

__     _____ __  __    ____ ___  _   _ _____ 
\ \   / /_ _|  \/  |  / ___/ _ \| \ | |  ___|
 \ \ / / | || |\/| | | |  | | | |  \| | |_   
  \ V /  | || |  | | | |__| |_| | |\  |  _|  
   \_/  |___|_|  |_|  \____\___/|_| \_|_|    
                                             

