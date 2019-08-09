HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt share_history autocd extendedglob prompt_subst hist_ignore_dups
unsetopt beep
bindkey -e

zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/maurn/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

zmodload zsh/zpty

source $ZDOTDIR/git-prompt.zsh

function precmd(){
    PROMPT='%F{cyan}%n%f%F{green}@%F{cyan}%m%f %~ %F{cyan}>%f '
    RPROMPT=$(git-prompt)
}

export EDITOR=nvim
export TERM=xterm-termite

source $ZDOTDIR/aliases.zsh

typeset -U path
path+=(~/.npm-global/bin/)

eval $(keychain --eval --quiet --noask id_rsa)

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh


source $ZDOTDIR/color-man-pages.zsh
source $ZDOTDIR/keybindings.zsh

export ANDROID_HOME=/home/maurn/android/sdk

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
