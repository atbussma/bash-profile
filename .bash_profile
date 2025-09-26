echo "Loading .bash_profile"

#
#   configure exports
#
echo "Loading exports"
export EDITOR=vim;
export VISUAL=$EDITOR;

#
#   configure aliases
#
if [ -f ~/.aliases ]; then
    echo "Loading aliases"
    source ~/.aliases
fi

#
#   source extensions
#
EXTENSIONS_ROOT=~/.bash
function sourceExtension {
    if [ -f $EXTENSIONS_ROOT/.bash_profile.$1 ]; then
        echo "Loading $EXTENSIONS_ROOT/.bash_profile.$1"
        . $EXTENSIONS_ROOT/.bash_profile.$1
    fi
}
sourceExtension "1password"
sourceExtension "nvm"
sourceExtension "go"
sourceExtension "gopass"
sourceExtension "git.completion"
sourceExtension "git.prompt"
sourceExtension "git.prompt.PS1"
sourceExtension "gpg"
sourceExtension "vagrant.completion"
sourceExtension "vscode"
sourceExtension "python"
sourceExtension "java"
