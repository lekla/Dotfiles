# Dotfiles for Arch-Lekla with Bspwm
--------------------------------------------

# Info
Disto: Arch Linux

Window Manager: Bspwm 

Terminal Emulator: Kitty

Status Bar: Polybar

Launcher + Powermenu: Rofi

Gtk Theme: Catppuccin-blue

Icons Theme: Papirus

--------------------------------------------

## 1) Dependencies

#### Base Packages:
sudo pacman -S xorg xorg-xinit bspwm sxhkd nitrogen polybar rofi kitty git pacman-contrib

#### Additional (Optional) Packages:
sudo pacman -S firefox thunar lxappearance htop obsidian thunderbird vim

#### Fonts and Icons:
sudo pacman -S ttf-ubuntu-font-family ttf-font-awesome papirus-icon-theme

#### AUR Packages:
yay -S picom-jonaburg-git betterlockscreen brave-bin timeshift

--------------------------------------------

## 2) Themes

#### Rofi:
https://github.com/adi1090x/rofi

#### GTK:
https://github.com/catppuccin/gtk

#### Cursor:
https://www.gnome-look.org/p/1358330

--------------------------------------------

# 3) Dotfiles Installation

```bash
git clone https://github.com/lekla/Dotfiles
cd Dotfiles
rm -rf .git
cp -r .* $HOME
```

--------------------------------------------

# 4) Screenshots
#### TODO
