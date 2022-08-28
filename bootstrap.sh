#!/usr/bin/env bash

sleep 1
tmux new-session -s server -d
tmux send-keys -t server:1.1 "c" "C-m" "s" "C-m"
sleep 1
tmux send-keys "server" "C-m"
tmux split-window -h -p 50
tmux send-keys "c" "C-m"
