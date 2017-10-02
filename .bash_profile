# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Source Node Version Manager (NVM)
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
source "/usr/local/opt/nvm/nvm.sh"

# Source bash_aliases
source "$HOME/.bash_aliases"

# Source nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# Source OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Source Elixir
export PATH="$PATH:/path/to/elixir/bin"
