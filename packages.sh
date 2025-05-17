#!/bin/bash

set -e  # Encerra o script se algum comando falhar

echo "🔄 Atualizando sistema..."
sudo pacman -Syu --noconfirm

echo "📦 Instalando ferramentas básicas (git, base-devel)..."
sudo pacman -S --needed --noconfirm git base-devel

echo ""
echo "📦 Instalando pacotes do repositório oficial (pacman)..."
sudo pacman -S --needed --noconfirm \
  # Sistema base
  base base-devel linux linux-firmware intel-ucode efibootmgr man-db zram-generator \
  # Terminal e CLI
  alacritty fish kitty zsh zsh-autosuggestions zsh-syntax-highlighting \
  nano vim helix git gdb wget unzip fzf rust-analyzer meson \
  # Rede e Bluetooth
  networkmanager network-manager-applet iw iwd net-tools arp-scan \
  bluez bluez-utils bluez-obex blueman \
  # Interface Gráfica
  hyprland hyprlock hyprpaper sway waybar wofi nitrogen sddm ly \
  xorg-server xorg-xinit \
  xdg-desktop-portal-hyprland xdg-utils wl-clipboard \
  qt5-wayland qt6-wayland \
  # Som (PipeWire)
  pipewire pipewire-alsa pipewire-jack pipewire-pulse \
  pulseaudio-alsa libpulse gst-plugin-pipewire \
  wireplumber pavucontrol \
  # Drivers e gráficos
  intel-media-driver libva-intel-driver \
  vulkan-intel vulkan-nouveau vulkan-radeon \
  xf86-video-amdgpu xf86-video-ati xf86-video-nouveau xf86-video-vmware \
  sof-firmware \
  # Aparência e fontes
  font-manager noto-fonts noto-fonts-cjk noto-fonts-emoji \
  ttf-fira-sans ttf-font-awesome \
  getnf \
  # Utilitários gráficos
  grim slurp swappy playerctl dunst  brightnessctl \
  gnome-boxes gnome-calculator gedit \
  # Arquivos e disco
  thunar gvfs udiskie udisks2 \
  # Sistema e hardware
  htop fastfetch smartmontools zoxide spin tcpdump wireless_tools \
  # Programação
  jdk-openjdk nodejs npm \
  # Música
  mpc mpd \
  # Diversos
  obsidian discord

echo ""
echo "📦 Instalando pacotes do AUR (yay)..."
yay -Syu --noconfirm
yay -S --needed --noconfirm \
  auto-cpufreq brave-bin spotify \
  getnf glava glava-debug \
  paru paru-debug yay yay-debug \
  visual-studio-code-bin swww

echo "✅ Instalação finalizada com sucesso!"
