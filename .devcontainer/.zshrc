# Preferred editor for local and remote sessions
export EDITOR=vim
export ALTERNATE_EDITOR=""

# Ruby
alias rr='rerun --pattern="{*.rb}"'
alias rru='ls **/*.rb config.ru .env* .environment | entr -c -r rackup -o 0.0.0.0'
alias ru='rackup -o 0.0.0.0'
