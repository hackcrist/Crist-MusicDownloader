#!/bin/bash

# ─── Colores ───
verde="\e[1;32m"
reset="\e[0m"

# ─── Banner ───
clear
echo -e "${verde}===========================================${reset}"
figlet "Crist-Music" | lolcat
echo -e "${verde}  🎧 Descargador de Álbumes MP3 🎵${reset}"
echo -e "${verde}===========================================${reset}\n"

# ─── Verificar yt-dlp ───
if ! command -v yt-dlp &>/dev/null; then
    echo -e "${verde}📦 Instalando yt-dlp...${reset}"
    pkg install python -y &>/dev/null
    pip install -U yt-dlp &>/dev/null
fi

# ─── Crear carpeta de destino ───
mkdir -p ~/MusicaCrist

# ─── Menú corto ───
echo -e "${verde}[1] Descargar álbum${reset}"
echo -e "${verde}[2] Salir${reset}"
read -p "🌀 Opción: " op

if [[ "$op" == "1" ]]; then
    read -p "🔗 Enlace del álbum (playlist YouTube): " enlace
    echo -e "${verde}⬇️ Descargando en alta velocidad...${reset}"
    yt-dlp -x --audio-format mp3 --audio-quality 0 --concurrent-fragments 10 -o "~/MusicaCrist/%(playlist_title)s/%(title)s.%(ext)s" "$enlace"
    echo -e "\n✅ Álbum guardado en: ~/MusicaCrist"
else
    echo -e "${verde}👋 Saliendo...${reset}"
    exit 0
fi
