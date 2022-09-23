FROM python:3.8-buster
WORKDIR /opt/python3.7/code
COPY /streaming-analytics  ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "python", "./your-daemon-or-script.py" ]
