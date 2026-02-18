#!/bin/bash

set -ouex pipefail
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#To install COSMIC
#dnf5 copr enable -y ryanabx/cosmic-epoch
#dnf5 -y install @cosmic-desktop @cosmic-desktop-apps
#dnf5 clean all


#Niri stuff:
#sudo dnf copr enable avengemedia/dms -y
#sudo dnf install niri dms -y
rpm-ostree install akmod-nvidia xorg-x11-drv-nvidia akmod-nvidia xorg-x11-drv-nvidia-cuda libreoffice podman-compose fastfetch helix git-credential-libsecret polkit xdg-user-dirs dbus-tools dbus-daemon gnome-keyring pavucontrol google-noto-emoji-fonts gnome-disk-utility gparted wireplumber pipewire pamixer network-manager-applet NetworkManager-openvpn NetworkManager-openconnect pipewire-alsa wlr-randr wlsunset brightnessctl foot fish fontawesome-fonts-all gnome-themes-extra gnome-icon-theme paper-icon-theme breeze-icon-theme papirus-icon-theme kvantum adw-gtk3-theme gstreamer1-vaapi gstreamer1-plugins-bad-free-extras gstreamer1-plugin-libav -y
#todo: install real ffmpeg
sudo rpm-ostree kargs --append=rd.driver.blacklist=nouveau,nova_core --append=modprobe.blacklist=nouveau,nova_core  # this might not be needed at some point when ostree systems will support the standard way to specify this.

#hyprland stuff
sudo dnf copr enable solopasha/hyprland -y
sudo dnf install hyprland-plugins hyprsysteminfo hyprpolkitagent hyprlock hypridle hyprpaper hyprshot xdg-desktop-portal-hyprland hyprland -y

sudo dnf copr enable avengemedia/dms -y
sudo dnf install dms -y
#Removed bpytop
#systemctl enable --now dsearch
#systemctl  add-wants niri.service dms


#flatpak install -y --system app.zen_browser.zen com.discordapp.DiscordCanary com.github.tchx84.Flatseal com.obsproject.Studio com.ranfdev.DistroShelf com.super_productivity.SuperProductivity dev.zed.Zed io.dbeaver.DBeaverCommunity io.dbeaver.DBeaverCommunity.Client.pgsql io.github.Qalculate md.obsidian.Obsidian net.ankiweb.Anki org.chromium.Chromium org.ferdium.Ferdium org.kde.filelight org.kde.gwenview org.kde.krita org.kde.krita.Codecs org.onlyoffice.desktopeditors org.telegram.desktop org.videolan.VLC us.zoom.Zoom
#### Example for enabling a System Unit File

systemctl enable podman.socket
