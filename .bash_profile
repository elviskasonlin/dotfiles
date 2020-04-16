# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Source liquid prompt, an adaptive bash prompt.
source "/Users/elviskason.lin/Code_Design/03_others/liquidprompt/liquidprompt"

# Source Node Version Manager (NVM)
source "/usr/local/opt/nvm/nvm.sh"

# Source bash_aliases
source "$HOME/.bash_aliases"

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
# This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
# This loads nvm bash_completion

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# Open SSL
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# Source flutter
export PATH="$HOME/Code_Design/03_others/installedPkgs/flutter/bin:$PATH"

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# Go
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Brew /usr/local/sbin
export PATH="/usr/local/sbin:$PATH"

# Anaconda
export PATH="/usr/local/anaconda3/bin:$PATH"
