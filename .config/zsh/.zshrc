# Completions
autoload -U compinit && compinit

# History
HISTSIZE="10000"
SAVEHIST="10000"
HISTFILE="$HOME/.config/zsh/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY
setopt NO_APPEND_HISTORY NO_EXTENDED_HISTORY NO_HIST_EXPIRE_DUPS_FIRST
setopt NO_HIST_FIND_NO_DUPS NO_HIST_IGNORE_ALL_DUPS NO_HIST_SAVE_NO_DUPS

# Zoxide
eval "$(zoxide init zsh)"

# Oh-my-posh
eval "$(oh-my-posh init zsh --config 'catppuccin_mocha')"

# Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history)

source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)

# Alias
alias cd='z'
alias l='eza -la --icons'

# Autostart
fastfetch
