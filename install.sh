#!/usr/bin/env sh
set -eu
DOTFILE_DIR=.dotfile
BACKUP_DIR=backup_$(date '+%Y%m%d%H%M')

echo "start installation."
if ! [ -e ~/${DOTFILE_DIR}/${BACKUP_DIR} ]; then
  mkdir -p ~/${DOTFILE_DIR}/${BACKUP_DIR}
fi

echo "move config files to ${DOTFILE_DIR} as backups."
#cat ${PWD}/install_list.txt |
#xargs -I@ \
#  mv ${HOME}/.@ ~/${DOTFILE_DIR}/${BACKUP_DIR}/
for f in $(cat ${PWD}/install_list.txt); do
  if [ -e ${HOME}/.${f} ]; then
    mv ${HOME}/.${f} ~/${DOTFILE_DIR}/${BACKUP_DIR}/.${f}
  fi
done

echo "make configs file in home directory as symbolic links."
for f in $(cat ${PWD}/install_list.txt); do
  ln -s ${PWD}/${f} ${HOME}/.${f}
done

echo "finish installation."

