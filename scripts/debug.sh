#!/bin/bash
export PYTHONPATH="$(pwd)"
export CUDA_VISIBLE_DEVICES="2"
# just modify the path to the model

python3.6 main.py \
  --data data/debug \
  --dropouti 0.2 \
  --dropoutl 0.2 \
  --dropouth 0.2 \
  --dropoute 0.2 \
  --wdrop 0.2 \
  --log-interval 1 \
  --seed 28 \
  --batch_size 2 \
  --lr 20.0 \
  --epoch 500 \
  --nhid 100 \
  --nhidlast 200 \
  --emsize 100 \
  --n_experts 2 \
  --save DEBUG \
  --single_gpu 
