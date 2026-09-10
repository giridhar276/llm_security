@echo off
py -3.11 -m venv venv_openai_evals
call venv_openai_evals\Scripts\activate.bat
python -m pip install --upgrade pip setuptools wheel
python -m pip install --no-cache-dir -r requirements-openai-evals.txt
python -m pip check
python -m ipykernel install --user --name openai-evals-3119 --display-name "Python 3.11.9 - OpenAI Evals"
pause
