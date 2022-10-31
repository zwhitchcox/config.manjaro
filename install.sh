#!/bin/bash

INSTALL_DIR=$( cd -- "$( dirname -- ${BASH_SOURCE[0]} )" &>/dev/null && pwd )/install


source $INSTALL_DIR/prepare.sh
bash $INSTALL_DIR/rustup.sh || echo failed to install rustup
bash $INSTALL_DIR/nvm.sh || echo failed to install nvm
bash $INSTALL_DIR/neovim.sh || echo failed to install neovim
