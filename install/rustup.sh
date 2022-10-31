#!/bin/bash

install_cargo() {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup.sh && \
  sh /tmp/rustup.sh -y
}

test -e $HOME/.cargo/bin/cargo || install_cargo
