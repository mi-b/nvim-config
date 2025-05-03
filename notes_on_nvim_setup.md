# Setting up neovim on Ubuntu
These are some notes taken during setup of neovim.
The setting is created by following the explanations of typecraft [Video Series](https://www.youtube.com/watch?v=zHTeCSVAFNY&ab_channel=typecraft).

## General setup
### Terminal and so
Get Wezterm, zsh and oh-my-zsh:
[check this link](https://medium.com/@satriajanaka09/setup-zsh-oh-my-zsh-powerlevel10k-on-ubuntu-20-04-c4a4052508fd)
### Fonts
get Nerd Font (e.g. Fira or Jetbrains) from [nerdfonts](https://www.nerdfonts.com/font-downloads)
download font and move font folter to `~/.fonts/`
```sh
rc-cache -fv
```

### Keyboard
put ctrl on capslock:
```sh
setxkbmap -option ctrl:nocaps
```
or make it permanent:
```sh
sudo nvim /etc/default/keyboard
```
change option to

```
XKBOPTIONS="ctrl:nocaps"
```
```sh
sudo dpkg-reconfigure keyboard-configuration
```

## Notes on neovim setup
### General
path to config: `~/.config/nvim/init.lua`

### Telescope : live grep
For using live_grep with telescope, you need ripgrep (rg):
```sh
sudo apt install ripgrep
```

### Markdown-preview
Get nodejs and npm
```sh
sudo apt install nodejs npm
```






