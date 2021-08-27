#   Change Prompt
#   ------------------------------------------------------------
    export PS1="MarcoWork \d \t \w "
    export PS2="| => "

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="$PATH:/usr/local/go/bin/"
    export PATH="$PATH:/usr/sbin/"
    export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"
    export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
    export PATH="$PATH:/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin"

     export HOMEBREW_BREW_GIT_REMOTE="https://github.com/Homebrew/brew"  # put your Git mirror of Homebrew/brew here
     export HOMEBREW_CORE_GIT_REMOTE="https://github.com/Homebrew/homebrew-core"  # put your Git mirror of Homebrew/homebrew-core here
    
#  insert fix for bash profile
#   ------------------------------------------------------------

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#   -----------------------------
#   Configure preproxy in shell
#   -----------------------------
 export http_proxy=http://localhost:3128/
 export http_proxy=http://127.0.0.1:3128/
 export https_proxy=http://localhost:3128/
 export https_proxy=http://127.0.0.1:3128/

#   -----------------------------
#   Configure GOPROXY in shell
#   -----------------------------
 export GOPROXY=https://goproxy.io,direct

#   -----------------------------
# Bash completion
# RTFM https://sourabhbajaj.com/mac-setup/BashCompletion/
#   -----------------------------

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#   -----------------------------
#  ALIAS MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

#   ---------------------------
#   4. SEARCHING
#   ---------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

