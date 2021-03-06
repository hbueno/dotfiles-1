# Alias definitions

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Clean conda packages and cache
alias conda-clean='conda update --all && conda clean -pity'

# To make JabRef fonts not horrible
# http://crunchbang.org/forums/viewtopic.php?pid=248580#p248580
alias jabref='nohup jabref > /dev/null 2>&1 &'

# Open the IRPF 2017 app
alias irpf2017='sudo _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on" java -jar /home/leo/bin/IRPF2017/irpf.jar'


alias ll='ls -lh'
alias la='ls -A'
alias open='xdg-open'
alias nb='jupyter notebook'
alias v='vim'
alias copy='xclip -sel clip'
alias cal='cal -3'
alias du='du -sh'
alias up='sudo apt-get update && sudo apt-get upgrade -y; alert'
alias untar='tar -xvf'
alias untargz='tar -xzvf'
alias untarbz='tar -xjvf'
alias tmux='TERM=xterm-256color tmux'
alias ta='tmux attach -t'
alias tls='tmux list-sessions'
alias pt_gen='pytest --mpl-generate-path=baseline'
alias pt='pytest -v --doctest-modules'
