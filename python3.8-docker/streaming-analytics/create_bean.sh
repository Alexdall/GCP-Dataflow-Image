#!/bin/bash  

python3.8 -m pip install --upgrade pip
python3.8 -m pip install --no-cache-dir -r requirements.txt
export GOOGLE_APPLICATION_CREDENTIALS="global-sign-361417-edbd1632b67b.json" 

