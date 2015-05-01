#! /bin/bash

echo "Updating Repository..."
cd "$HOME/.vim"
git pull --ff-only origin master
