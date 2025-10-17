# tmux-script
Script that starts tmux by creating or accessing a directory used for Hack The Box. Feel free to modify it as you wish to apply it to your projects.
Also, you can review my tmux.conf repository to see the configuration I use for the tmux session used in this script.

![screenshot](https://github.com/R-kill-9/tmux.conf/blob/main/mkt.png)

## Execution
To execute use the command:
```bash
./mkt.sh <directory_name>
```
 But I recommend creating an alias in the ~/.bashrc file.
 - Open the file
 ```bash
 vi ~/.zshrc
 ```
 - Create the alias
 ```bash
 alias mkt='/usr/bin/mkt.sh'
 ```
 - Save the changes
 ```bash
 source ~/.zshrc
 ```
Now you just need to execute:
```bash
mkt <directory_name>
```
And you can use it in any directory.


## Directory hierarchy
As mentioned before, the script accesses the <directory_name> and starts tmux. In case the directory doesn't exist, it creates it with the following hierarchy:

    <directory_name>
    ├── evidence
    └── tools
   
   
## Recommendations
In case you want to copy some text in the terminal, I recommend using the zoom mode: 
- 'Ctrl a + Z`
- Copy text with the mouse
- `Ctrl a + Z`

To navigate through the terminal I recommend you using the copy mode:
- `Ctrl a + [`
  - Use ↑ / ↓ to move line by line
  - Use `PageUp` / `PageDown` to scroll faster
  - Type `/text` to search
  - Press `q` to exit copy mode
