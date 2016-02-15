#!/bin/bash
if [ -d ~/.vim ] || [ -h ~/.vim ] ; then
  echo "~/.vim already exists" &&  exit 1;
fi

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

if [ ! -d ${SCRIPTPATH}/vim/autoload ] ; then
  mkdir ${SCRIPTPATH}/vim/autoload
fi

curl -LSso ${SCRIPTPATH}/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
ln -s "$SCRIPTPATH"/vim ~/.vim
