autoload -Uz compinit
compinit
source <(kubectl completion zsh)
alias k="kubectl"

# Custom zsh prompt
NEWLINE=$'\n'
PROMPT="${NEWLINE}%F{cyan}%D{%L:%M:%S} %F{white}%d${NEWLINE}%F{reset}> "

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Custom function which kills process for given port
function killportfn() {
lsof -i tcp:$1 | awk -v i=2 -v j=2 'FNR==i {print $j}' | xargs kill -KILL;
}
alias killport='killportfn'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/quick/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/quick/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/quick/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/quick/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

