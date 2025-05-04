#!/bin/bash

sudo pacman -Syu
sudo pacman -S git base-devel

echo "📦 Instalando pacotes do repositório oficial (pacman)..."
sudo pacman -S --needed \
  # Sistema base
  base base-devel linux linux-firmware intel-ucode efibootmgr man-db zram-generator \
  # Terminal e CLI
  alacritty fish kitty zsh zsh-autosuggestions zsh-syntax-highlighting \
  nano vim helix git gdb wget unzip fzf rust-analyzer meson \
  # Rede e Bluetooth
  networkmanager network-manager-applet iw iwd net-tools arp-scan \
  bluez bluez-deprecated-tools bluez-obex blueman \
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
  grim slurp swappy playerctl dunst cava glava brightnessctl \
  gnome-boxes gnome-calculator gedit \
  # Arquivos e disco
  thunar gvfs udiskie udisks2 \
  # Sistema e hardware
  htop neofetch fastfetch smartmontools zoxide spin tcpdump wireless_tools \
  # Programação
  jdk-openjdk nodejs npm \
  # Música
  mpc mpd \
  # Diversos
  obsidian firefox discord

echo ""
echo "📦 Instalando pacotes do AUR (yay)..."
yay -S --needed \
  auto-cpufreq brave-bin spotify \
  getnf glava glava-debug \
  paru paru-debug yay yay-debug \
  visual-studio-code-bin swww

echo ""

#permissao de execucao
#chmod +x packages.sh 

#executar
#./packages.sh