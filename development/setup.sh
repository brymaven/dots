#!/usr/bin/env bash

if [ ! -d "~/.ssh" ]; then
    echo "Creating .ssh directory"
    mkdir ~/.ssh
    chmod 700 ~/.ssh

    pushd ~/.ssh
    ssh-keygen -t rsa -b 4096 -C 'brymaven@gmail.com' -f id_rsa_brymaven -Pprimarykey
    popd
fi


echo "Install brew"
brew install python autoenv
pip install virtualenv

echo "source $(brew --prefix autoenv)/activate.sh" >> ~/.bash_profile


brew install stack-haskell
pushd ~
stack install ghc-mod
popd
