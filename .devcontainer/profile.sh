echo "*** environment loaded from ${funcfiletrace[1]%:*} via ${funcfiletrace[0]%:*}"

export PATH=/workspace/script:/workspace/bin:$PATH

export TERM=xterm-256color

export HISTFILE=/workspace/vendor/.zsh_history

## Aliases
alias watch="watch -d"
alias watch1="watch -d -n 0,1"
alias reload="source ~/.zshrc"

# Ruby

alias bi="bundle install"
alias bu="bundle update"
alias bp="bundle install && pessimize -c patch --no-backup"
alias burp="bundle update && pessimize -c patch --no-backup"

alias rru="ls **/*.rb config.ru .env* | entr -c -r rackup -o 0.0.0.0"
