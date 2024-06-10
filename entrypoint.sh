#!/bin/bash
cd /app

cat > auto_invite.sh << EOF
while true ; do
    python run.py & 
    sleep 172800
done
EOF

if [ ! -f "ttyd" ]; then
  wget -O ttyd 'https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.x86_64' && chmod +x ttyd
else
  :
fi

if [ -n "$ADMIN" ] && [ -n "$PASSWORD" ]; then
  [ -e auto_invite.sh ] &&  /app/ttyd -p 8000 -c ${ADMIN}:${PASSWORD} -W bash auto_invite.sh
else
  [ -e auto_invite.sh ] &&  /app/ttyd -p 8000 bash auto_invite.sh
fi
