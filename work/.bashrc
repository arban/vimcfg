#################################################
# Irrelevant/default settings in Ubuntu omitted #
#################################################

## Custom prompt, requires kube-ps1: https://github.com/jonmosco/kube-ps1
if [ "$color_prompt" = yes ]; then
    PS1="◖${debian_chroot:+($debian_chroot)}${host}\[\033[01;34m\]\w\[\033[00m\] ⎈\$(kube_ps1)\$(__git_ps1 ' ᚠ%s')◗\n\[\033[01m\]$\[\033[00m\] "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

export CLICOLOR="1"

source ~/tools/kube-ps1.sh
export KUBE_PS1_SYMBOL_ENABLE=false
