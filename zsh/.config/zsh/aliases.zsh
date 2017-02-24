alias ls='ls --color=auto'
alias shutdown='shutdown now'
alias tree='tree -C'
alias pacin='pacaur -S'
alias pacun='sudo pacman -Rs'
alias updatemirrors='sudo reflector --verbose --country 'Denmark' --age 12 --sort rate --save /etc/pacman.d/mirrorlist'
alias systemupdate='pacaur -Syu'
alias removeorphans='sudo pacman -Rns $(pacman -Qtdq)'
alias vim='nvim'
alias i3config='vim ~/.config/i3/config'
alias zconfig='vim $ZDOTDIR/.zshrc'
alias aconfig='vim $ZDOTDIR/aliases.zsh'
alias irc='irssi'
alias gitstat='git fetch; git status'
alias feh='feh -.B black'
alias sudo='sudo '
alias music='ncmpcpp'
alias subdl='subliminal download -l en'
alias stream='peerflix --mpv'
mkcd () { mkdir "$1"; cd "$1" }
