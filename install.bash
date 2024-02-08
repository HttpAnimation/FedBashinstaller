echo "Updating"
sudo dnf update
echo "done"
echo "adding flathub"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "done"
echo "installing flathub apps"
flatpak install flathub net.rpcs3.RPCS3
flatpak install flathub org.citra_emu.citra
flatpak install flathub app.xemu.xemu
flatpak install flathub org.libretro.RetroArch
flatpak install flathub org.ppsspp.PPSSPP
flatpak install flathub org.DolphinEmu.dolphin-emu
flatpak install flathub net.kuribo64.melonDS
flatpak install flathub org.videolan.VLC
flatpak install flathub com.google.Chrome
flatpak install flathub org.blender.Blender
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.audacityteam.Audacity
flatpak install flathub org.gnome.Boxes
flatpak install flathub net.brinkervii.grapejuice
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.github.unrud.VideoDownloader
flatpak install flathub com.visualstudio.code
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.vysp3r.RetroPlus
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub io.github.shiftey.Desktop
echo "done"
echo "installing vpn"
wget https://www.expressvpn.works/clients/linux/expressvpn-3.63.0.4-1.x86_64.rpm
sudo dnf install expressvpn-3.63.0.4-1.x86_64.rpm
rm expressvpn-3.63.0.4-1.x86_64.rpm
expressvpn activate
expressvpn preferences set block_ads true
echo "done"
echo "installing vencord"
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
echo "done"