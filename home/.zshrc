# ------------------------ Installation links ---------------------------------
# oh-my-zsh: https://ohmyz.sh/
# powerlevel10k: https://github.com/romkatv/powerlevel10k
# nerdfonts: https://github.com/ryanoasis/nerd-fonts
# gotop: https://github.com/cjbassi/gotop
# lsd: https://github.com/Peltoche/lsd
# Flat remix color scheme: bash -c "$(curl -sLo- https://git.io/JvvDs)"

# -------------------------------- POWERLEVEL ---------------------------------

POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K=truncate_beginning
POWERLEVEL9K_TIME_BACKGROUND=black
POWERLEVEL9K_TIME_FOREGROUND=white
POWERLEVEL9K_TIME_FORMAT=%D{%I:%M}
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=black
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=green
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=black
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=yellow
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=white
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=black
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=black
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=blue
POWERLEVEL9K_FOLDER_ICON=
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON=●
POWERLEVEL9K_VCS_UNSTAGED_ICON=±
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=↓
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=↑
POWERLEVEL9K_VCS_COMMIT_ICON=' '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{blue}╭─%F{red}'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{blue}╰%f '
POWERLEVEL9K_CUSTOM_OS_ICON='echo  $(whoami) '
POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND=red
POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND=white
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status background_jobs time ram virtualenv)

# Plugins
plugins=(git virtualenv)


export ZSH=/home/elachere/.oh-my-zsh
export EDITOR="nano"

export PYTHONPATH=$PYTHONPATH:$HOME/python/
export PYTHONPATH=$PYTHONPATH:$HOME/dev/
export PYTHONPATH=$PYTHONPATH:$HOME/dev/training/

export PATH=$PATH:$HOME/bin/
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:/usr/sbin/
export PATH=$PATH:/sbin
export PATH=$PATH:$HOME/dev/backend/scripts
export PATH=$PATH:$HOME/dev/weboob/scripts
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools/bin
export PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools/
export PATH=$PATH:$HOME/dev/proxynet/scripts

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUAL_ENV_DISABLE_PROMPT=0
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev

# man
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


source /usr/share/powerlevel10k/powerlevel10k.zsh-theme
source $ZSH/oh-my-zsh.sh
source /home/elachere/.local/bin/virtualenvwrapper.sh

# -------------------------------- ALIASES ---------------------------------

alias ls='lsd'
alias l='ls -l'
alias la='ls -la'
alias lt='l --sort newest'
alias lock='i3lock -c 110000 -n'
alias grep='grep --color=auto'
alias prettyjson='python -m json.tool'
alias off='sudo shutdown -h now'
alias atomb="/usr/bin/atom-beta -a"
alias wifi='nmtui'
alias audiocontrol='pavucontrol'
alias hdmicast='xrandr --output HDMI-1 --auto --right-of eDP-1'
alias top='gotop'

# -------------------------------- FUNCTIONS ---------------------------------

function set_brightness() {
  xrandr --output eDP-1 --brightness $1
}

function tryMR(){
  git fetch $1 merge-requests/$2/head:MR_$2 && git checkout MR_$2
}
