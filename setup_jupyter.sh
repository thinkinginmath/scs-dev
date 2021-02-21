#!/bin/bash

jupyter lab --generate-config

# set the password to 'cmuscs'
CONFPATH=$HOME/.jupyter/jupyter_notebook_config.json
python3 -c "from notebook.auth.security import set_password; set_password('cmuscs', '$CONFPATH')"
