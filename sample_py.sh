#!/usr/bin/env bash

DATE=`date +%d_%m_%Y`
CODE=src
OUTPUT=results/${DATE}/$1

echo "Sampling"
python3 ${CODE}/data_samples.py --data-from-args checkpoints/$1/args.pth --output ${OUTPUT}-py  -n 2 --seq 80000

echo "Generating"
python3 ${CODE}/run_on_files.py --files ${OUTPUT}-py --batch-size 1 --checkpoint checkpoints/$1/lastmodel --output-next-to-orig --decoders $2 --py
