#!/bin/sh
#=============================================================================#
# Vonng's Git Setup script
#   Author: vonng (fengruohang@outlook.com)
#   Run this script to setup git configurations
#=============================================================================#

#—————————————————————————————————————————————————————————————————————————————#
echo "#=============================================================#"
echo "# Configuring git settings..."
#—————————————————————————————————————————————————————————————————————————————#

#—————————————————————————————————————————————————————————————————————————————#
# Git Setup
git config --global user.name "墨航"
git config --global user.email "ruohang.frh@alibaba-inc.com"

# Setup git config
CONFIG_DST=$HOME/.gitconfig
CONFIG_DIR=$HOME/usr/conf/git
SRC_DIR=$(cd `dirname $0`; pwd)

# Backup old settings
BACKUP_DIR=$HOME/.config_backup
mkdir -p $BACKUP_DIR
if [ -f "$CONFIG_DST" ]; then
  mv $CONFIG_DST $BACKUP_DIR/.gitconfig
fi

# Make conf holder
mkdir -p $CONFIG_DIR
cp -r $SRC_DIR/gitconfig $CONFIG_DIR/

rm -rf $CONFIG_DST
ln -s $CONFIG_DIR/gitconfig $CONFIG_DST

echo "# Git setup done."
echo "#=============================================================#"
#—————————————————————————————————————————————————————————————————————————————#