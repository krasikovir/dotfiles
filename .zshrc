# aliases
alias ct="g++ -w -std=c++17 temp.cpp -o temp.out"
alias st="clear && ./temp.out < input.txt"
alias py="Python3"
alias lg='lazygit'
alias ran='source ranger'

alias tns="tmux new -s"
alias tks="tmux kill-server"
alias tat="tmux attach -t"
alias ts="tmux ls"

alias t1="tree -L 1"
alias t2="tree -L 2"
alias t3="tree -L 3"

# exports
export EDITOR='vim'

# evals
eval "$(starship init zsh)"
eval "$(pyenv init --path)"

# shell scripts
source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
eval "$(pyenv virtualenv-init -)"
