#!/usr/bin/env bash

export USER_SCRIPTS_DIR=$(realpath ~/scripts/)

# enable auto-complete for git ignore languages
_git_ignore()
{
  args=("$(cat $USER_SCRIPTS_DIR/git-aliases/_git_ignore__args | sed -e 's|\n$| |g')")
  COMPREPLY=($(compgen -W "$(echo ${args[@]})" -- "$cur"))
}
