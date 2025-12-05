echo "Loading .zshrc"


#
#	initialize the zsh completion system
#		-C: use the existing cache to speed up startup
#
autoload -Uz compinit
compinit -C

#
#   source .profile
#
if [ -f ~/.profile ]; then
    . ~/.profile
fi
