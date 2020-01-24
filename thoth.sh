#!/bin/bash

set -o errexit
self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function define {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth define WORD\nDefine the word WORD" | fold -w 100 -s
		return
	fi
	return 1
}

function antonym {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth antonym WORD\nFind antonyms for the word WORD" | fold -w 100 -s
		return
	fi
	return 1
}

function synonym {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth synonym WORD\nFind synonyms for the word WORD" | fold -w 100 -s
		return
	fi
	return 1
}

function example {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth example WORD\nFind examples for the word WORD" | fold -w 100 -s
		return
	fi
	return 1
}

function rhyme {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth rhyme WORD\nFind words that rhyme with the word WORD" | fold -w 100 -s
		return
	fi
	return 1
}

function list {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth list\nList all available commands" | fold -w 100 -s
		return
	fi
	declare -F | awk '{print $NF}'
}

function help {
	if [[ "$1" == "-h" || "$1" == "--help" ]] ; then
		echo -e ">> thoth help\nShow this menu and exit" | fold -w 100 -s
		return
	fi
	cat << EndOfHelp
USAGE TODO

Usage:
  thoth COMMAND

Available commands:
$(declare -F | awk '{print $NF}' | sed "s/^/  /")

$( \
	for cmd in $(declare -F | awk '{print $NF}') ; do \
		echo "$($self/thoth.sh $cmd --help)" && \
		echo ; \
	done \
)
EndOfHelp
}

if declare -F -- "${1:-}" >/dev/null ; then
	"$@"
else
	>&2 echo "thoth: err: no such command '$1'"
	>&2 echo "Use 'help' for available commands"
	exit 1
fi
