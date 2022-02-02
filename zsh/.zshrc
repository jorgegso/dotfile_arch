#rapair error java
export _JAVA_AWT_WM_NONREPARENTING=1
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
plugins=zsh-syntax-highlighting
plugins=(git)
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
#History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data


# Update
alias rb="source ~/.zshrc ~/config/nvim ~/.motd_shown ~/tmux.conf"

# Accesos directos
alias tmux="tmux -2"
alias v="nvim"
alias ea="nvim ~/.zshrc"
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Better cat
alias catn="/bin/cat"
alias cat="/bin/bat"
alias catnl="/bin/batcat --paging=never"
alias q="exit"
alias cl="clear"
# Manual aliases
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

PROMPT="%(?:%{%}ﮊ:%{%}ﮊ) %{$fg[white]%}%c %{$reset_color%} $(git_prompt_info)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
 # Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]] || [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ $KEYMAP == main ]] || [[ $KEYMAP == viins ]] || [[       $KEYMAP = '' ]] || [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() { zle-keymap-select 'beam'}