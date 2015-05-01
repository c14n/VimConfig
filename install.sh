#! /bin/bash

set -o errexit
set -o nounset

VIMCFGSRC="https://github.com/c14n/VimConfig.git"
VUNDLESRC="https://github.com/gmarik/Vundle.git"

VIMCFGDST="$HOME/.vim"
VUNDLEDST="$VIMCFGDST/bundle/Vundle.vim"

function backup-vimrc {

	if [ ! -e "$VIMCFGDST" ]; then
		return
	fi

	VIMBAK="$VIMCFGDST-$(date --iso-8601=date)"

	if [ -d "$VIMBAK" ]; then
		VIMBAK="$VIMCFGDST-$(date --iso-8601=seconds)"
	fi

	echo "Backing up old VIM configuration to $VIMBAK"
	mv "$VIMCFGDST" "$VIMBAK"
}

function restore-vimrc {

	if [ -z "$VIMBAK" ]; then
		return
	fi

	echo "Restoring old VIM configuration from $VIMBAK"
	mv "$VIMBAK" "$VIMCFGDST"
}

function download-vimrc {
	echo "Dowloading VIM Configuration"
	git clone "${VIMCFGSRC}" "${VIMCFGDST}"
}

function download-vundle {
	echo "Downloading Vundle"
	git clone "${VUNDLESRC}" "${VUNDLEDST}"
}

backup-vimrc

download-vimrc || restore-vimrc
download-vundle || restore-vimrc
