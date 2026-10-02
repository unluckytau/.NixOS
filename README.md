## <p align="center"> NixOS Config. </p>

<p align="center">
<img src="https://img.shields.io/badge/NixOS-1c1b19?style=for-the-badge&logo=nixos&logoColor=e08060">
<img src="https://img.shields.io/badge/Hyprland-1c1b19?style=for-the-badge&logo=hyprland&logoColor=e08060">
<img src="https://img.shields.io/badge/Lua-1c1b19?style=for-the-badge&logo=lua&logoColor=e08060">
</p>

<p align="center">
    <img src="etc/preview.png" alt="Preview">
</p>

#### Installation.

1. Enter Nix-Shell environment.
```
nix-shell -p git neovim
```

2. Clone required repos.
```
git clone https://github.com/unluckytau/.nixos.git
git clone https://github.com/unluckytau/.wallpapers.git
```

3. Copy `hardware-configuration.nix` into `.nixos/system/`.
```
# Replace $USER with username
cp /etc/nixos/hardware-configuration.nix /home/$USER/.nixos/system/hardware-configuration.nix
```

4. Setup misc configs.
```
# Replace $USER with username
mkdir -p /home/$USER/.local/state/hypr
cp /home/$USER/.nixos/etc/display.lua /home/$USER/.local/state/hypr/
cp /home/$USER/.nixos/etc/misc.lua /home/$USER/.local/state/hypr/
```

> #### Additional Installation Notes.
> 
> - If on a different device, disable import for `./wdblue.nix` in `.nixos/system/default.nix`. Delete `./wdblue.nix` module afterwards.
> - If on a non-nvidia device, disable import for `./nvidia.nix` in `.nixos/system/default.nix`. Delete `./nvidia.nix` module afterwards.

5. Disable import for `./nixvim` in `.nixos/home/default.nix`.
7. Disable import for `./misc.nix` in `.nixos/system/default.nix`.
8. Rebuild system using `sudo nixos-rebuild switch --flake .#USERNAME`.
9. Re-enable imports after system is successfully installed.

#### Flatpaks.
```bash
# add flathub remote.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# flatpaks.
flatpak install flathub app.zen_browser.zen com.discordapp.Discord org.gimp.GIMP moe.launcher.an-anime-game-launcher -y
```
