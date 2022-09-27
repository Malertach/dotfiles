# dotfiles
Bash Config files with usefull settings and a colorful bash prompt
![grafik](https://user-images.githubusercontent.com/22221400/192580838-d98a0170-4826-4436-a2f6-1e37d2167f9b.png)

## Features
- Current user host and working directory always shown
- Color of hostname indicates local or remote shell
- When in git repository, the current git branch and status will be shown in prompt
- Use arrow keys to reverse-search the current command
- Set color for often used commands
- Many convenient aliases
- Setup autocompletion for Rust when available

## Installation
1. Clone this repository 
2. Enter repository
3. Run `install.sh` (a backup of your current dotfiles is written to `~/.dotfiles_bak.d`)
4. Restart your shell
```bash
git clone https://github.com/Malertach/dotfiles.git;
cd dotfiles;
./install.sh;
exec bash
```


