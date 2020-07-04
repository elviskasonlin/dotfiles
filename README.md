# DOTFILES
Dev setup backups.

## 1.0 Overview
This repository includes dotfiles for –
* Vim (.vim, .vimrc)
* Shells
  * General (.profile)
  * Bash (.bash_aliases, .bash_profile)
  * Zsh (.zprofile)
* Tmux (.tmux, .tmux.conf)
* Default Global Configs (.gitignore_global, .eslintrc)

## 2.0 Env setup
Process of installing essentials.

1. Command Line Tools (Standalone, first terminal prompt)
2. Link and source dotfiles related to shells etc.
3. Homebrew (standalone, mac)
4. Node Version Manager (via homebrew)
5. Node (via NVM)
6. Ruby Version Manager
7. Ruby (via rvm)
9. Pyenv (via Homebrew)
10. Other CL Tools (tree, wget, via homebrew)
11. XQuartz (via homebrew cask)
12. Coocapods (requires ruby)
13. Python3 & Python2 (via homebrew)
14. Languages (Kotlin, Go, Lua etc.)
15. 

Set exports etc. & symlink after installation.

## 3.0 Easy installation
Ravern was kind enough to set me up with a nifty base shell script to do all this. Run this following command in the terminal itself & you are good to go.

*Currently needs updating*

    sh -c "$(curl https://github.com/elviskasonlin/dotfiles/raw/master/macos_installer.sh)"


