#!/bin/bash
export PYTHONPATH="$(pwd)"
export CUDA_VISIBLE_DEVICES="0"
# just modify the path to the model

python3.6 main.py \
  --data data/penn \
  --dropouti 0.4 \
  --dropoutl 0.25 \
  --seed 141 \
  --batch_size 10 \
  --lr 20.0 \
  --epoch 1000 \
  --nhidlast 160 \
  --emsize 160 \
  --n_experts 5 \
  --save PTB_exp1_v10 \
  --softmax_expert \
  --single_gpu
