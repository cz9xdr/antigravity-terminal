#!/bin/bash
sudo apt update && sudo apt install -y tmux ttyd
tmux new-session -d -s antigravity
nohup ttyd -p 7681 tmux attach -t antigravity > ttyd.log 2>&1 &
echo "완료! Ports 탭에서 7681 포트를 Public으로 바꾸세요"
