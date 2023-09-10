# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# environment variables
export BAT_THEME="Monokai Extended Bright"
export LS_COLORS="$(vivid generate dracula)"
export EDITOR="vim"
export DOTFILES="$HOME/.dotfiles"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=30000
SAVEHIST=10000
setopt extendedglob

# plugin
source $DOTFILES/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOTFILES/zsh/autojump/bin/autojump.zsh
source $DOTFILES/zsh/powerlevel10k/powerlevel10k.zsh-theme
source $DOTFILES/zsh/fzf/shell/key-bindings.zsh
source $DOTFILES/zsh/fzf/shell/completion.zsh

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "~/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $DOTFILES/zsh/.p10k.zsh ]] || source $DOTFILES/zsh/.p10k.zsh 

# alias
alias n="neofetch | lolcat"
if type bat >/dev/null 2>&1; then 
    alias cat="bat"
fi
if type lsd >/dev/null 2>&1; then 
    alias ls="lsd"
    alias la="lsd -a"
    alias ll="lsd -l"
    alias lla="lsd -la"
fi
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"  


# local file
test -f ~/.zshrc.local && source ~/.zshrc.local

# functions
source $DOTFILES/functions/*

