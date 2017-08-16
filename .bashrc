alias l='ls -a'
alias gia='git add'
alias gis='git status'
alias gid='git diff'
alias gib='git branch'
alias gico='git checkout'
alias gil='git log -n 10'
alias gic='git commit -m'
alias gir='git rebase -i'

alias src='source'

# Change directory shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


# Python aliases
alias venv='virtualenv -p python3'

[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
