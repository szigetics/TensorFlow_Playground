python3 -m venv .
source bin/activate
pip3 install -r requirements.txt

python3 create_keras_model.py
python3 coremlconverter.py
