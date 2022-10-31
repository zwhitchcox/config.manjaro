#!/bin/bash

install_nvim() {
  sudo pacman -Su neovim --noconfirm

  test -d ~/.config/nvim || \
    git clone git@github.com:zwhitchcox/config.nvim ~/.config/nvim && \
      nvim +PackInstall
}

which nvim || install_nvim
