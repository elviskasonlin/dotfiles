# Load the default .profile
[[ -s "$HOME/.profile"  ]] && source "$HOME/.profile" 

export BASH_SILENCE_DEPRECATION_WARNING=1

# Source liquid prompt, an adaptive bash prompt.
source "/Users/elviskason.lin/Code_Design/03_others/liquidprompt/liquidprompt"

# Source bash_aliases
source "$HOME/.bash_aliases"
