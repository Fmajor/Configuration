#!/bin/sh
#=============================================================================#
# Vonng's Bash Profile Setup script
#   Author: vonng (fengruohang@outlook.com)
#   Run this script to setup configurations
#=============================================================================#

#—————————————————————————————————————————————————————————————————————————————#
echo "#=============================================================#"
echo "# Setup configurations"
#—————————————————————————————————————————————————————————————————————————————#
# Mode: prod | dev
# Influence ssh config
MODE=$1
# Directory setup
INSTALL_DIRECTORY=$HOME/usr/
mkdir -p $INSTALL_DIRECTORY
mkdir -p $INSTALL_DIRECTORY/bin
mkdir -p $INSTALL_DIRECTORY/tmp
mkdir -p $INSTALL_DIRECTORY/lib
mkdir -p $INSTALL_DIRECTORY/conf
mkdir -p $INSTALL_DIRECTORY/local
mkdir -p $INSTALL_DIRECTORY/script
mkdir -p $INSTALL_DIRECTORY/include
#—————————————————————————————————————————————————————————————————————————————#
# Bash
bash/setup_bash.sh $MODE
#—————————————————————————————————————————————————————————————————————————————#
# Git
git/setup_git.sh $MODE
#—————————————————————————————————————————————————————————————————————————————#
# Vim
vim/setup_vim.sh $MODE
#—————————————————————————————————————————————————————————————————————————————#
# SSH
ssh/setup_ssh.sh $MODE
#—————————————————————————————————————————————————————————————————————————————#
# Script
 script/setup_script.sh $MODE
#—————————————————————————————————————————————————————————————————————————————#
echo "# Configuration setup done."
echo "#=============================================================#"
#—————————————————————————————————————————————————————————————————————————————#