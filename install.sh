#!/usr/bin/env sh
set -eu
DOTFILE_DIR=.dotfile
BACKUP_DIR=backup_$(date '+%Y%m%d%H%M')

echo "start installation."
if ! [ -e ${HOME}/${DOTFILE_DIR}/${BACKUP_DIR} ]; then
  mkdir -p ${HOME}/${DOTFILE_DIR}/${BACKUP_DIR}
fi

echo "move config files to ${DOTFILE_DIR} as backups."
for f in $(cat ${PWD}/install_list.txt); do
  if [ -e ${HOME}/.${f} ] && [ ! -L ${HOME}/.${f} ]; then
    mv ${HOME}/.${f} ~/${DOTFILE_DIR}/${BACKUP_DIR}/.${f}
  fi
done

if [ -z $(ls -A ${HOME}/${DOTFILE_DIR}/${BACKUP_DIR}) ]; then
  rm -rf ${HOME}/${DOTFILE_DIR}/${BACKUP_DIR}
  echo "there is no files to backup."
else
  echo "make config files in home directory as symbolic links."
  for f in $(cat ${PWD}/install_list.txt); do
    ln -s ${PWD}/${f} ${HOME}/.${f}
  done
fi

echo "finish installation."

