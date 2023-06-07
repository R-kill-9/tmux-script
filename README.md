# HTB_tmux
Script that starts tmux by creating or accessing a directory used for Hack The Box. Feel free to modify it as you wish to apply it to your projects.
Also, you can review my tmux.conf repository to see the configuration I use for the tmux session used in this script.

## Execution
To execute use the command:
```bash
./mkhtb.sh <directory_name>
```

## Directory hierarchy
As mentioned before, the script accesses the <directory_name> and starts tmux. In case the directory doesn't exist, it creates it with the following hierarchy:

    <directory_name>
    ├── evidence
    │   ├── credentials
    │   ├── data
    │   └── screenshots
    ├── logs
    │
    ├── scans
    │   
    ├── scope
    │  
    └── tools
   
   
## Windows created
- Main
- Auxiliar
- Evidence
- Logs
- Scans
- Scope
- Tools
