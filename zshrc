export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  dnf
  zsh-syntax-highlighting
  zsh-autosuggestions
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

alias vhost="sudo /opt/lampp/lampp start"
alias lara="php artisan "
alias proj="cd /mnt/data/MS313/1_PROJECT/1_WEB/ && tmux ";
alias note="nvim /tmp/note.txt"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ssh adding
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/gitlab/id_rsa
ssh-add ~/.ssh/github/id_rsa
