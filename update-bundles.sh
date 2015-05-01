#! /bin/bash

echo "Updating Bundles..."
vim -u "$HOME/.vim/vundlerc" -c ":BundleInstall!" -c ":quitall"

