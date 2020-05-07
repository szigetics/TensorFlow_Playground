set -e #Stop execution in case if any commands fail

python3 -m venv .
source bin/activate
pip3 install -r requirements.txt

python3 train_mask_detector.py -d dataset
python3 coremlconverter.py
