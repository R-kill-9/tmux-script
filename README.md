# tmux-script
Script that starts tmux by creating or accessing a directory used for Hack The Box. Feel free to modify it as you wish to apply it to your projects.
Also, you can review my tmux.conf repository to see the configuration I use for the tmux session used in this script.

In case you want to copy some text in the terminal, I recommend using the zoom mode: 
- Ctrl + Z
- Copy text with the mouse
- Ctrl + Z
  
![screenshot](https://github.com/R-kill-9/tmux.conf/blob/main/mkt.png)


## Execution
To execute use the command:
```bash
./mkhtb.sh <directory_name>
```
 But I recommend creating an alias in the ~/.bashrc file.
 - Open the file
 ```bash
 vi ~/.bashrc
 ```
 - Create the alias
 ```bash
 alias mkt='/usr/bin/mkt.sh'
 ```
 - Save the changes
 ```bash
 source ~/.bashrc
 ```
Now you just need to execute:
```bash
mkt <directory_name>
```
And you can use it in any directory.

## Directory hierarchy
As mentioned before, the script accesses the <directory_name> and starts tmux. In case the directory doesn't exist, it creates it with the following hierarchy:

    <directory_name>
    ├── evidences
    ├── scans
    └── tools
   
   
## Windows created
- Main
- Auxiliar
- Evidences
- Scans
- Tools
