# ! hmdb-ucf

python3 ../main.py \
    --train_source_dataset /data/datasets/hmdb_ucf/hmdb/train \
    --train_target_dataset /data/datasets/hmdb_ucf/ucf/train \
    --val_dataset /data/datasets/hmdb_ucf/ucf/test \
    --epochs 20 \
    --optimizer sgd \
    --lr 0.005 \
    --weight_decay 1e-9 \
    --scheduler cosine \
    --batch_size 32 \
    --n_clips 1 \
    --n_frames 16 \
    --frame_size 224 \
    --num_workers 4 \
    --gpus 0 1 \
    --train head+temporal \
    --mlp_hidden_dim 2048 \
    --mlp_n_layers 0 \
    --replace_with_mlp \
    --name hmdb-ucf-head+temporal-adversarial \
    --project bmvc-2021 \
    --da adversarial \
    --pseudo_labels \
    --adversarial_loss_weight 0.5 \
    --target_ce_loss_weight 0.1 \
    --wandb \
    --pretrained_source_model pretrained_source_models/hmdb-ucf-source-head+partial-35xc7vyr-ep=19.ckpt

# # ! ucf-hmdb

python3 ../main.py \
    --train_source_dataset /data/datasets/hmdb_ucf/ucf/train \
    --train_target_dataset /data/datasets/hmdb_ucf/hmdb/train \
    --val_dataset /data/datasets/hmdb_ucf/hmdb/test \
    --epochs 20 \
    --optimizer sgd \
    --lr 0.005 \
    --weight_decay 1e-9 \
    --scheduler cosine \
    --batch_size 32 \
    --n_clips 1 \
    --n_frames 16 \
    --frame_size 224 \
    --num_workers 4 \
    --gpus 0 1 \
    --train head+temporal \
    --mlp_hidden_dim 2048 \
    --mlp_n_layers 0 \
    --replace_with_mlp \
    --name ucf-hmdb-head+temporal-adversarial \
    --project bmvc-2021 \
    --da adversarial \
    --pseudo_labels \
    --adversarial_loss_weight 0.5 \
    --target_ce_loss_weight 0.1 \
    --wandb \
    --pretrained_source_model pretrained_source_models/ucf-hmdb-source-head+partial-343fe6qo-ep=19.ckpt

# # ! kinetics-necdrone

python3 ../main.py \
    --train_source_dataset /data/datasets/kinetics_datasets/kinetics_nec_balanced \
    --train_target_dataset /data/datasets/nec-drone/cropped/train_balanced \
    --val_dataset /data/datasets/nec-drone/cropped/test \
    --epochs 20 \
    --optimizer sgd \
    --lr 0.002 \
    --weight_decay 1e-9 \
    --scheduler cosine \
    --batch_size 32 \
    --n_clips 1 \
    --n_frames 16 \
    --frame_size 224 \
    --num_workers 3 \
    --gpus 0 1 \
    --train head+temporal \
    --mlp_hidden_dim 2048 \
    --mlp_n_layers 0 \
    --replace_with_mlp \
    --name kinetics-nec-head+temporal-adversarial \
    --project bmvc-2021 \
    --da adversarial \
    --pseudo_labels \
    --adversarial_loss_weight 0.5 \
    --target_ce_loss_weight 0.01 \
    --wandb \
    --save_model \
    --pretrained_source_model pretrained_source_models/kinetics-nec-source-head+partial-191p572e-ep=19.ckpt
