#!/usr/bin/env bash

tmux new-session -s server -d
tmux send-keys -t server:0.0 "c" "C-m" "s" "C-m" "server" "C-m"
tmux split-window -h -p 50
tmux send-keys "c" "C-m"
