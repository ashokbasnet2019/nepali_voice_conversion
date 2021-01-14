set -e -x

CODE=src
DATA=musicnet/preprocessed

EXP=musicnet
export MASTER_PORT=29500

python3 ${CODE}/train.py \
    --data ${DATA}/Speaker_A \
    --batch-size 1 \
    --lr-decay 0.995 \
    --epoch-len 5 \
    --num-workers 1 \
    --lr 1e-3 \
    --seq-len 12000 \
    --d-lambda 1e-2 \
    --expName ${EXP} \
    --latent-d 64 \
    --layers 14 \
    --blocks 4 \
    --data-aug \
    --grad-clip 1

