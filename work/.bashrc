##
## Additions
##

if [ "$color_prompt" = yes ]; then
    ## Default
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ## Customized prompt
    PS1="◖${debian_chroot:+($debian_chroot)}${host}\[\033[01;34m\]\w\[\033[00m\] ⎈\$(kube_ps1)\$(__git_ps1 ' ᚠ%s')◗\n\[\033[01m\]$\[\033[00m\] "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

## Bash completion
source <(kubectl completion bash)
source <(helm completion bash)
complete -F __start_kubectl k
[[ -r "/usr/local/etc/profile.d/bash_completion.sh"  ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

## Environment variables
export CLICOLOR="1"

## PATH additions
export PATH="$PATH:$HOME/.local/bin"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
