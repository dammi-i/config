if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" \
        && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" \
        && print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" \
        || print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
ZSH_THEME="robbyrussell"

(( ${+_comps} )) && _comps[zinit]=_zinit

zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::compfix.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::functions.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::misc.zsh
zinit snippet OMZL::termsupport.zsh
zinit snippet OMZL::theme-and-appearance.zsh

zinit for                                        \
    light-mode zinit-zsh/z-a-rust                \
    light-mode zinit-zsh/z-a-as-monitor          \
    light-mode zinit-zsh/z-a-patch-dl            \
    light-mode zinit-zsh/z-a-bin-gem-node        \
    light-mode zsh-users/zsh-completions         \
    light-mode zsh-users/zsh-autosuggestions     \
    light-mode zdharma/fast-syntax-highlighting  \
               zdharma/history-search-multi-word \
    light-mode pick"async.zsh" src"pure.zsh"     \
               sindresorhus/pure

alias l='exa --group --long --time-style=iso'
alias la='l --all'
alias v='nvim'
alias cxx='clang++ -std=c++20 -Wall -Wextra -Wpedantic'


export MENUCONFIG_COLOR=blackbg
export PURE_PROMPT_SYMBOL='→ '

setopt complete_in_word
setopt nobgnice
setopt hup
setopt append_history
setopt inc_append_history
setopt share_history
setopt no_beep
umask u=rwx,go=
