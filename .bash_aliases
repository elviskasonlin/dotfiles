# ls cmd #
alias lsa="ls -ChA"
alias lsla="ls -ClhA"
alias lscf="ls -CF"
alias lsal="ls -ChA | less"
alias lslal="ls -ClhA | less"

# cd cmd #
alias ..="cd .."
cdm() {
    for ((a=1; a<=$1; a++))
    do
        cd ..
    done

    pwd
    ls -ChA
}

# mkdir cmd#
alias mkd="mkdir -pv"
mkdcd() {
    mkdir -pv $1
    cd $1
    pwd
}

# mv cmd #
alias mvf="mv -f"
alias mvi="mv -i"

# code_design folder cd #
alias cdu="cd ~/Code_Design"

# git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# ssh
alias nasadmin="ssh elviskasonlinadmin@192.168.0.114 -p 600"
