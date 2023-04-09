# /bin/bash
# Necessary installation for python3 development
pip install --upgrade pip
# linting
pip install pylint
# ipython for interactive coding
pip install ipython
# openai to interact with vim_codex
pip install openai
# jupyter and jupyter_ascending
pip install jupyter
pip install jupyter_ascending && \
python3 -m jupyter nbextension    install jupyter_ascending --sys-prefix --py && \
python3 -m jupyter nbextension     enable jupyter_ascending --sys-prefix --py && \
python3 -m jupyter serverextension enable jupyter_ascending --sys-prefix --py
# to interact with jupyter_ascending
jupyter nbextension install --py --sys-prefix jupyter_ascending
jupyter nbextension     enable jupyter_ascending --sys-prefix --py
jupyter serverextension enable jupyter_ascending --sys-prefix --py
