#!/bin/bash
# .bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
if [ -f "/etc/bashrc" ]; then
  . /etc/bashrc
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,functions,path,extra,exports}; do
  [[ -r "${file}" ]] && [[ -f "${file}" ]] && source "${file}"
done

unset file
