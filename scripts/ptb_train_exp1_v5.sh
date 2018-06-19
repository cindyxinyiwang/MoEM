#!/bin/bash
export PYTHONPATH="$(pwd)"
export CUDA_VISIBLE_DEVICES="2"
# just modify the path to the model

python3.6 main.py \
  --data data/penn \
  --dropouti 0.4 \
  --dropouth 0.25 \
  --seed 141 \
  --batch_size 12 \
  --epoch 500 \
  --n_experts 1 \
  --save PTB_exp1_v5 \
  --lr 20.0 \
  --single_gpu
