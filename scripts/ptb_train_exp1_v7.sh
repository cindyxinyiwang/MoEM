#!/bin/bash
export PYTHONPATH="$(pwd)"
export CUDA_VISIBLE_DEVICES="2"
# just modify the path to the model

python3.6 main.py \
  --data data/penn \
  --dropouti 0.2 \
  --dropoute 0.3 \
  --dropouth 0.225 \
  --seed 141 \
  --batch_size 12 \
  --small_batch_size 4 \
  --lr 20.0 \
  --epoch 1000 \
  --nhid 800 \
  --nhidlast 150 \
  --emsize 150 \
  --n_experts 8 \
  --save PTB_exp1_v7 \
  --single_gpu
