#!/bin/bash

# ─── Instalar figlet y lolcat ───
pkg install figlet -y > /dev/null 2>&1
pkg install ruby -y > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1

# ─── Dar permisos ───
chmod +x crist-music.sh

# ─── Crear comando global ───
ln -sf $(pwd)/crist-music.sh /data/data/com.termux/files/usr/bin/crist-music
chmod +x /data/data/com.termux/files/usr/bin/crist-music

# ─── Mensaje final y redirección ───
echo -e "\n\e[1;32m✅ Instalación completa.\e[0m"
echo -e "\e[1;34m🔗 Sígueme en TikTok para más herramientas: @crist.1.0\e[0m"
sleep 2
xdg-open "https://www.tiktok.com/@crist.1.0?_t=ZN-8xKx4vMdkec&_r=1" > /dev/null 2>&1 &

echo -e "\n🟢 Ejecuta ahora: crist-music desde cualquier parte"
