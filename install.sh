#!/usr/bin/env bash
python3 -m venv pctf-env
source pctf-env/bin/activate
pip3 install -r images/eth-challenge-base/requirements.txt
cp $(which anvil) images/eth-challenge-base/anvil