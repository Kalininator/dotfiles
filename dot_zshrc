export VISUAL="nvim"
# export VISUAL="code -w"
export EDITOR=$VISUAL

export TERM="xterm-256color"
export ZSH="/Users/kal/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export PATH=${HOME}/go/bin:$PATH
# export GOPATH="${HOME}/.go"
# export GOROOT="$(brew --prefix golang)/libexec"
# export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status )
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

unsetopt share_history

plugins=(
  git
  zsh-autosuggestions
)

alias tnew="tmux new -s"
alias ta="tmux a -t"
alias tkill="tmux kill-session -t"
alias tls="tmux ls"
alias v="nvim"
alias vim="nvim"
alias r="ranger"
alias wttr="curl wttr.in/London"
alias python="python3"
alias cr="cargo run"
alias k="kubectl"
alias kaf="kubectl apply -f "
alias ap="ansible-playbook"
alias flushdns="sudo killall -HUP mDNSResponder"
alias fs="NODE_OPTIONS=--openssl-legacy-provider foreman start -f Procfile.dev"
alias dbprod="~/cloud_sql_proxy -instances=laced-production:europe-west1:laced-master-instance=tcp:5433"
alias dbprodread="~/cloud_sql_proxy -instances=laced-production:europe-west1:laced-analytics-replica=tcp:5434"
alias dbstaging="~/cloud_sql_proxy -instances=laced-staging:europe-west1:laced-master-instance=tcp:5433"
alias dbstagingread="~/cloud_sql_proxy -instances=laced-staging:europe-west1:laced-analytics-replica=tcp:5435"
alias dbpreview="~/cloud_sql_proxy -instances=laced-preview:europe-west1:laced-master-instance=tcp:5433"
alias cddot="cd ~/.dotfiles"
alias tf="terraform"
alias tfp="terraform plan"
alias rspecf="rspec \$(fzf)"
alias git-ssh="git remote set-url origin git@github.com:\$(git remote get-url origin | sed 's/https:\/\/github.com\///' | sed 's/git@github.com://')"
alias gp="git push"
alias gfp="git fetch && git pull"
alias gd="git checkout $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')"
alias ghpr="gh pr create --web"
alias gb="git checkout -b"
alias br="~/Documents/GitHub/tcop-cli/bin/run"
# alias tcop-cli="~/Documents/GitHub/tcop-cli/bin/run"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey -v

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}
addToPathFront $HOME/.local/bin
# alias tmux-sessionizer="~/.local/bin/tmux-sessionizer"
bindkey -s ^f "tmux-sessionizer\n"

function cdgit() {
	cd ~/Documents/Github/$1
}

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export DISABLE_SPRING=true
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

ulimit -Sn 10240

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/kal/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
export GPG_TTY=/dev/ttys003
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval eval 
eval 
TCOP_CLI_AC_ZSH_SETUP_PATH=/Users/kal/Library/Caches/tcop-cli/autocomplete/zsh_setup && test -f $TCOP_CLI_AC_ZSH_SETUP_PATH && source $TCOP_CLI_AC_ZSH_SETUP_PATH; # tcop-cli autocomplete setup
eval 
TCOP_CLI_AC_ZSH_SETUP_PATH=/Users/kal/Library/Caches/tcop-cli/autocomplete/zsh_setup && test -f $TCOP_CLI_AC_ZSH_SETUP_PATH && source $TCOP_CLI_AC_ZSH_SETUP_PATH; # tcop-cli autocomplete setup
