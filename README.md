# DOTFILES
Dev setup backups.

## 1.0 Overview
This repository is essentially for this dotfile organisation purposes. It includes –
* Vim (.vim, .vimrc)
* Bash (.bash_aliases, .bash_profile)
* Tmux (.tmux, .tmux.conf)
* Default Global Configs (.eslintrc)

## 2.0 Env setup
So this is my process of installing the essentials.

1. Command Line Tools (Standalone, first terminal prompt)
2. Source .bash_aliases (from .bash_profile)
3. Homebrew (standalone)
4. Node Version Manager (via homebrew)
5. Node (via NVM)
6. Ruby Version Manager (via nvm)
7. Ruby (via rvm)
8. Other CL Tools (tree, wget, via homebrew)
9. XQuartz (via homebrew cask)
10. Coocapods (requires ruby)
11. Python3 & Python2 (via homebrew)

Remember to symlink afterwards!

## 3.0 Easy installation
Ravern was kind enought to set me up with a nifty base shell script to do all this. Run this following command in the terminal itself & you are goot to go.

    sh -c "$(curl https://github.com/elviskasonlin/dotfiles/raw/master/macos_installer.sh)"


