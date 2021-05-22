#!/usr/bin/env bash

current_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

if ! [ $current_path/env ]

then
  echo "Enter name of your python virtual environment"
  echo "press enter for current path"
  echo "type \'none\' if you have not created any"

  read environment

  if [ $environment == 'none']

  then
    cmdString = "python -m venv env"
    eval $cmdString
    source "$current_path/env/Scripts/activate"
  else
    source $current_path/$environment"/Scripts/activate"
  fi

fi