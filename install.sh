#!/bin/bash

# ─── Instala figlet y lolcat si faltan ───
pkg install figlet -y > /dev/null 2>&1
pkg install ruby -y > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1

# ─── Dar permisos y mover el script ───
chmod +x crist-music.sh
echo "✅ Usa ./crist-music.sh para iniciar el descargador."
