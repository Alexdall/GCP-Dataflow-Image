FROM ubuntu:18.04
WORKDIR /opt/python3.7/code
COPY /streaming-analytics  ./
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y python3-pip
RUN apt-get install -y apt-transport-https ca-certificates gnupg
RUN apt-get install -y curl
RUN apt-get install -y python3.8
RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN  apt-get update &&  apt-get install -y google-cloud-cli
#RUN python3 --version
RUN export GOOGLE_APPLICATION_CREDENTIALS="/opt/python3.7/code"
ENV BUCKET_NAME=alexandre-datalake-bkt
ENV PROJECT_ID=global-sign-361417
ENV TOPIC_ID=Topico-teste
ENV REGION=southamerica-east1	
ENV python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install --upgrade setuptools
RUN python3.8 -m pip install Cython
RUN python3.8 -m pip install --no-cache-dir -r requirements.txt
COPY . .
#CMD [ "python", "./your-daemon-or-script.py" ]
