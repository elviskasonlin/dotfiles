# DOTFILES
Dev setup backups.

## 1.0 Overview
This repository includes dot files for –
* Vim (.vim, .vimrc)
* Bash (.bash_aliases, .bash_profile)
* Tmux (.tmux, .tmux.conf)
* Default Global Configs (.eslintrc)

## 2.0 Env setup
Process of installing essentials.

1. Command Line Tools (Standalone, first terminal prompt)
2. Source .bash_aliases (from .bash_profile)
3. Homebrew (standalone)
4. Node Version Manager (via homebrew)
5. Node (via NVM)
6. Ruby Version Manager
7. Ruby (via rvm)
8. Other CL Tools (tree, wget, via homebrew)
9. XQuartz (via homebrew cask)
10. Coocapods (requires ruby)
11. Python3 & Python2 (via homebrew)
12. Conda (via homebrew cask)

Set exports etc. & symlink after installation.

## 3.0 Easy installation
Ravern was kind enough to set me up with a nifty base shell script to do all this. Run this following command in the terminal itself & you are good to go.

*Currently needs updating*

    sh -c "$(curl https://github.com/elviskasonlin/dotfiles/raw/master/macos_installer.sh)"


