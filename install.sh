#!/bin/bash

# Get PHP Source Code
cd ~
wget https://www.php.net/distributions/php-7.4.6.tar.gz
tar xzvf php-7.4.6.tar.gz
mv php-7.4.6 php

# Install build dependencies
sudo apt-get update
sudo apt-get install -y build-essential autoconf libtool bison re2c

# Install My Development Environment
sudo apt-get install vim tmux
git clone https://github.com/happynote3966/dotfiles
cp dotfiles/.tmux.conf ~/
cp dotfiles/.vimrc ~/
