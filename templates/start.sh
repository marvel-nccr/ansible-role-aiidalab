#!/bin/bash
source "{{ aiidalab_client_venv }}/bin/activate"
export PYTHONPATH=${PYTHONPATH}${PYTHONPATH:+:}{{ aiidalab_base_folder }}

if jupyter notebook list | grep -q 'localhost'; then
    url=`jupyter notebook list | grep -m1 localhost | awk '{print $1}'`
    xdg-open $url
else
    jupyter notebook --notebook-dir="{{ aiidalab_base_folder }}" \
      --NotebookApp.default_url="/apps/apps/home/start.ipynb"
fi
