# /bin/bash
# Necessary installation for python3 development
pip install --upgrade pip
pip install pylint
pip install ipython3
pip install openai
pip install jupyter
pip install jupyter_ascending && \
python3 -m jupyter nbextension    install jupyter_ascending --sys-prefix --py && \
python3 -m jupyter nbextension     enable jupyter_ascending --sys-prefix --py && \
python3 -m jupyter serverextension enable jupyter_ascending --sys-prefix --py
