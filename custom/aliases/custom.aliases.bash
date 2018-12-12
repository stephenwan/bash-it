codes_dir="~/Codes"

alias reload="source ~/.bash_profile"

alias codes="cd ${codes_dir}"
alias crepo="cd ${codes_dir}/crepo"
alias myrepo="cd ${codes_dir}/myrepo"

alias tldr="${codes_dir}/public/bash/tldr/tldr"

alias ?="dict -h localhost -p 2628 "

alias lookup="find ~/Codes ~/Desktop ~/Documents | fzf "

alias awscpcredential="env | ag aws | pbcopy"

alias godos="ssh -i ~/.ssh/id_rsa_do_stephen stephen@dos"


cpdos() {
    scp -i ~/.ssh/id_rsa_do_stephen $1 stephen@dos:$2
}

dldos() {
    scp -i ~/.ssh/id_rsa_do_stephen stephen@dos:$1 $2
}

alias magit="emacs --eval=\"(magit-status)\""

gojira() {
    chrome "https://gojira.skyscanner.net/browse/RAIL-$1"
}
