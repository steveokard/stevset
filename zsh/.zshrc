# Skip the not really helping Ubuntu global compinit
skip_global_compinit=1
#####################
# FIRST PROMPT LINE #
#####################
rosso='\e[1;34m'
NC='\e[0m'
echo -e "${rosso}Ubuntu${NC}" `lsb_release -sr` "| ${rosso}ZSH${NC} ${ZSH_VERSION}"

source $HOME/.zsh_aliases
# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

# if the init script doesn't exist
if ! zgenom saved; then
    echo "Creating a zgenom save"

    zgenom prezto

    # plugins
    zgenom prezto fasd
    zgenom prezto git

    # bulk load
    zgenom loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
        b4b4r07/enhancd
        zdharma/fast-syntax-highlighting

EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgenom load zsh-users/zsh-completions src

    # theme
    zgenom load romkatv/powerlevel10k powerlevel10k

    # save all to init script
    zgenom save
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
