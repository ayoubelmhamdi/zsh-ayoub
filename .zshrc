export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="macovsky-ruby"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source $HOME/.alias

export TERM=xterm-256color
VISUAL="nvim"



#delcheck "$@"
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
#tmux
# clear
# neofetch
#$HOME/start-void.sh
