#!/bin/bash

if [ -z "$1" ]; then
    echo "Please add project directory"
    exit 1
fi

PROJECT_DIR=$1

PACKAGES=("python_speech_features"
          "pyswip"
          "sounddevice"
          "hmmlearn"
          "tensorboard")

mkdir -p "$PROJECT_DIR"

cd "$PROJECT_DIR" || exit

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip

for package in "${PACKAGES[@]}"; do
    pip install "$package"
done

deactivate

