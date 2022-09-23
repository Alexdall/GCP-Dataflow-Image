#!/bin/bash

sudo docker build -t ubuntu_dataflow:18.04

sudo docker run -it --rm --name ubuntu-18.04 ubuntu_dataflow:18.04
