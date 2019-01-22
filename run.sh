#!/bin/bash

export APOLLO_ROOT='https://github.com/GittYuP4/apollocaffe.git'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$APOLLO_ROOT/build/lib
export PYTHONPATH=$PYTHONPATH:$APOLLO_ROOT/python:$APOLLO_ROOT/python/caffe/proto

cp ../apollocaffe/blob/master/Makefile.config.example
sudo make -j8
sudo make test -j8 && make runtest


python main.py -c config/vqa_nmn.yml
#python main.py -c config/geo_nmn.yml
