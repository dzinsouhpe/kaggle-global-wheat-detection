#!/bin/bash

# Export HPE proxy variables
export http_proxy=http://web-proxy.corp.hpecorp.net:8080
export https_proxy=http://web-proxy.corp.hpecorp.net:8080
export no_proxy=localhost,127.0.0.1

# Initialize python env
python3 -m venv ~/venv-kaggle-gwd
source ~/venv-kaggle-gwd/bin/activate
pip install pandas jupyter kaggle
ipython kernel install --name "kaggle-gwd" --user
pip install --upgrade pip
echo "source ~/venv-kaggle-gwd/bin/activate"

# Initialize Kaggle env
#kaggle config set -n proxy -v http://web-proxy.corp.hpecorp.net:8080
#kaggle competitions download -c global-wheat-detection