@echo off
py -3.11 -m venv venv_genai_eval
call venv_genai_eval\Scripts\activate.bat
python -m pip install --upgrade pip setuptools wheel
python -m pip install --no-cache-dir -r requirements.txt
python -m pip check
python -m ipykernel install --user --name genai-eval-3119 --display-name "Python 3.11.9 - GenAI Evaluation"
python verify_environment.py
pause
