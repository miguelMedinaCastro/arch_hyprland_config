#!/bin/bash

DOWNLOAD_DIR="$HOME/Downloads"
DISCORD_TAR=$(find "$DOWNLOAD_DIR" -maxdepth 1 -name "discord-*.tar.gz" | sort -r | head -n 1)

if [ ! -f "DISCORD_TAR"]; then
	echo "arquivo discord tar.gz nao foi encontrado em $DOWNLOAD_DIR"
	exit 1
fi

echo "arquivo encontrado: $DISCORD_TAR"
echo "extraindo..."

tar -xvzf "$DISCORD_TAR" -C "$DOWNLOAD_DIR"

echo "removendo discord antigo..."
sudo rm -rf /opt/Discord

echo "movendo nova versao para /opt..."
sudo mv "$DOWNLOAD_DIR/Discord" /opt/

echo "atualizando link simbolico..."
sudo ln -sf /opt/Discord/Discord /usr/bin/discord

echo "Discord atualizado com sucesso!"
