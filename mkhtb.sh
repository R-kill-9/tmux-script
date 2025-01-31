#!/bin/bash

# User input: mkt <directory_name>


# Create directories
if [ ! -d "$1" ]; then
  mkdir "$1"
  cd "$1"
  mkdir evidences tools
else
  cd "$1"
fi



##############
# Tmux init  #
##############


tmux has-session -t "tmux_$1" 2>/dev/null

# If doesn't exists it is created
if [ $? != 0 ] 
then
  

  # New detached tmux session
  tmux new-session -d -s "tmux_$1"

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


  ############### Create Windows Directories ##############

  # Create a new window and name it
  cd evidences
  tmux new-window -n "Evidence"
  tmux select-window -t 2
  cd ..

  # Create a new window and name it
  cd tools
  tmux new-window -n "Tools"
  tmux select-window -t 4

  fi
# Select Main window to start
tmux select-window -t "tmux_$1:Main"

# Attach tmux session
tmux attach-session -t "tmux_$1"

