#
#	Prompt for Bash
#
if [ -n "$BASH_VERSION" ]; then
  source /usr/share/git-core/git-prompt.sh 2>/dev/null
  PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

#
#	Prompt for Zsh
#
if [ -n "$ZSH_VERSION" ]; then
  autoload -Uz vcs_info
  precmd() { vcs_info }
  setopt prompt_subst
  PROMPT='[%n@%m %~${vcs_info_msg_0_}]\$ '
  zstyle ':vcs_info:git:*' formats ' (%b)'
fi
