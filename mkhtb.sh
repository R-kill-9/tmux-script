#!/bin/bash

# User inputs: ./mkhtb <directory_name>

# Create directories
if [ ! -d "$1" ]; then
  mkdir "$1"
  cd "$1"
  mkdir evidence evidence/credentials evidence/data evidence/screenshots logs scans scope tools
else
  cd "$1"
fi


##############
# Tmux init  #
##############

# New detached tmux session
tmux new-session -d -s "tmux_$1"

############### AUXILIAR CONFIG ###############

# Create a new window and name it
tmux new-window -n "Auxiliar"

# Split the window vertically
tmux split-window -h

# Split the first pane horizontally
tmux select-pane -t 1
tmux split-window -v

# Split the second pane horizontally
tmux select-pane -t 0
tmux split-window -v



############### MAIN CONFIG ##############

# Select the Main window
tmux select-window -t 0

# Rename window 0 to Main
tmux rename-window "Main"

# Split the window vertically
tmux split-window -h

# Split the first pane horizontally
tmux select-pane -t 1
tmux split-window -v

# Split the second pane horizontally
tmux select-pane -t 0
tmux split-window -v

# Split the third pane horizontally
tmux select-pane -t 3
tmux split-window -v



############### Create Windows Directories ##############

# Create a new window and name it
cd evidence
tmux new-window -n "Evidence"
tmux select-window -t 2
cd ..

# Create a new window and name it
cd scans
tmux new-window -n "Scans"
tmux select-window -t 3
cd ..

# Create a new window and name it
cd logs
tmux new-window -n "Logs"
tmux select-window -t 4
cd ..

# Create a new window and name it
cd scope
tmux new-window -n "Scope"
tmux select-window -t 5
cd ..

# Create a new window and name it
cd tools
tmux new-window -n "Tools"
tmux select-window -t 6




# Attach tmux session
tmux attach-session -t "tmux_$1"

