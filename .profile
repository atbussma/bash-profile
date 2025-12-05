echo "Loading profile"

#
#   configure exports
#
echo "Loading exports"
export EDITOR="vim"
export VISUAL="$EDITOR"

#
#   configure aliases
#
if [ -f ~/.aliases ]; then
    echo "Loading aliases"
    source "$HOME/.aliases"
fi

#
#   source extensions
#
EXTENSIONS_ROOT="$HOME/.profiles"
sourceExtension() {
    local extension_file="$EXTENSIONS_ROOT/.bash_profile.$1"
    if [ -f "$extension_file" ]; then
        echo "Loading $extension_file"
        . "$extension_file"
    fi
}
sourceExtension "1password"
sourceExtension "nvm"
sourceExtension "git.completion"
sourceExtension "git.prompt"
sourceExtension "git.prompt.PS1"
sourceExtension "vscode"
sourceExtension "python"
sourceExtension "java"
sourceExtension "docker"
