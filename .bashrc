export PS1="\u@\w\$"

export PATH=$PATH:~/Bin
export PATH="/usr/local/bin:$PATH"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}



