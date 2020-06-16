#!/bin/bash
python3 -m venv ~/venv-kaggle-gwd
pip install pandas jupyter
ipython kernel install --name "kaggle-gwd" --user
pip install --upgrade pip
source ~/venv-kaggle-gwd/bin/activate
