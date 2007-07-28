#!/bin/sh

# Evaluate to run the game with F5.  Useful for testing
# (global-set-key [f5] '(lambda () (interactive) (shell-command "sh startgame.sh")))

if [ -z $1 ]; then
    emacs --debug-init --no-init-file --load bintris.el --funcall "bintris"
else
# console emacs
    /usr/bin/emacs-i386 --no-init-file --load bintris.el --funcall "bintris"
fi

