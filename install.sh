#!/bin/bash

set -o errexit

# install thoth
install thoth /usr/local/bin/

# install dictionary
install words.txt /usr/local/etc/

# TODO: install autocomplete
if [[ $0 != "$BASH_SOURCE" ]] ; then
	source _thoth
else
	install _thoth /usr/local/etc/bash_completion.d/
fi
