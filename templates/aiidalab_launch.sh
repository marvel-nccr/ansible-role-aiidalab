#!/bin/bash
source "{{ aiidalab_jupyter_venv }}/bin/activate"
export PYTHONPATH=${PYTHONPATH}${PYTHONPATH:+:}{{ aiidalab_base_folder }}

if jupyter notebook list | grep -q localhost:${1:-{{ aiidalab_jupyter_port }}}; then
    url=`jupyter notebook list | grep -m1 localhost:${1:-{{ aiidalab_jupyter_port }}} | awk '{print $1}'`
    xdg-open $url
else
    jupyter notebook --notebook-dir="{{ aiidalab_base_folder }}" \
      --NotebookApp.default_url="/apps/apps/home/start.ipynb" \
      --port=${1:-{{ aiidalab_jupyter_port }}} {{ aiidalab_jupyter_extra_args | default('') }}
fi
