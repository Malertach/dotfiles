#!/usr/bin/env bash
export BASH_SILENCE_DEPRECATION_WARNING=1

# add `~/bin` to the `$PATH`
export PATH="/usr/local/bin:$HOME/bin:$PATH";

# load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    # shellcheck source=/dev/null # checking for existence and reading rights
    [ -r "$file" ] && source "$file";
done;
unset file;

# append to the bash history file, rather than overwriting it
shopt -s histappend;

# enable some bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;

# add tab completion for many bash commands

