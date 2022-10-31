#!/bin/bash

install_nvm() {
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
  if ! grep -q "export NVM_DIR" "$RC_FILE"; then
echo >> "$RCFILE" << EOF

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_compl
etion
EOF
  fi
}

test -e "$HOME/.nvm" || install_nvm
