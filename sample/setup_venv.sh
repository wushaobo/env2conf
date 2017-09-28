#!/usr/bin/env bash

set -e

function prepare_virtualenv () {
    pip install virtualenv
}

function pip_install () {
    venv_dir=$1
    requirement_txt=$2

    if [ ! -d ${venv_dir} ]; then
        virtualenv -p $(which python) --always-copy ${venv_dir}
    fi

    source ${venv_dir}/bin/activate

    pip install --extra-index-url=https://pypi.org/simple/ -r ${requirement_txt}

    deactivate
}

prepare_virtualenv
pip_install ${1:-venv} requirements.txt
