#!/bin/bash
export PYTHONPATH="$(pwd)"
export CUDA_VISIBLE_DEVICES="0"
# just modify the path to the model

python3.6 main.py \
  --data data/penn \
  --dropouti 0.4 \
  --dropoute 0.3 \
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
  --save PTB_exp1_v3 \
  --single_gpu
