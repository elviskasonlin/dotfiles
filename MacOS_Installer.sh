# SETUP PATH

SETUP_PATH = "~/developer/dotfiles/"

###########################################
# Sudo everything                         #
###########################################

# Ask for sudo from user
sudo -v

# Keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


###########################################
# Other init stuff                        #
###########################################

# Install Xcode Dev Tools
xcode-select --install


###########################################
# Brew install everything                 #
###########################################

# Install Homebrew first
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew doctor twice
brew doctor
brew doctor # It's actually required

# Update brew even though we just installed it
brew update
brew upgrade

# Important stuff for everyday use
brew install vim # Vim 8.0
brew install tmux
brew install node
brew install wget

# CL utilities
brew install tree


###########################################
# Setup Dev Environment                   #
###########################################

# Create the developer directory and go into it
mkdir -p $SETUP_PATH
cd $SETUP_PATH

# Clone the repo
git clone https://github.com/elviskasonlin/dotfiles.git
cd dotfiles

# Symlink the files in this repo to the Home directory
ln -s -F $SETUP_PATH/dotfiles/.vimrc ~/.vimrc
ln -s -F $SETUP_PATH/dotfiles/.vim ~/.vim
ln -s -F $SETUP_PATH/dotfiles/.tmux.conf ~/.tmux.conf
ln -s -F $SETUP_PATH/dotfiles/.tmux ~/.tmux
ln -s -F $SETUP_PATH/dotfiles/.bash_aliases ~/.bash_aliases
ln -s -F $SETUP_PATH/dotfiles/.bash_profile ~/.bash_profile


###########################################
# Language specific stuff                 #
###########################################

# Version managers
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash # NVM
\curl -sSL https://get.rvm.io | bash -s stable # RVM
source ~/.bash_profile

# NodeJS
nvm install node

# Ruby
rvm install 2.4.1
rvm use 2.4.1

# Python 3
brew install python3

# iOS
brew install cocoapods

# Casks
brew cask install xquartz


###########################################
# Vim setup                               #
###########################################

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


###########################################
# General                                 #
###########################################

# Restart automatically if the computer freezes
systemsetup -setrestartfreeze on


###########################################
# Cleanup                                 #
###########################################

# Clean up brew
brew cleanup
brew doctor # Again!!!

# Quit all affected apps
for app in "Dock" "Finder" "SystemUIServer" "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done
