#!/bin/bash
export PYTHONPATH="$(pwd)"
export CUDA_VISIBLE_DEVICES="2"
# just modify the path to the model

python3.6 main.py \
  --data data/penn \
  --dropouti 0.6 \
  --dropoute 0.5 \
  --dropoutl 0.29 \
  --dropouth 0.225 \
  --seed 28 \
  --batch_size 10 \
  --lr 20.0 \
  --epoch 1000 \
  --nhid 960 \
  --nhidlast 620 \
  --emsize 120 \
  --n_experts 5 \
  --save PTB_exp1_v4 \
  --single_gpu
