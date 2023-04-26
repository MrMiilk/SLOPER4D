#!/bin/bash

cd visualization

DATA_BASE=$1
seq_name=$(basename $DATA_BASE)
suffix='_render_scene'

echo "Path in: $DATA_BASE"
echo "Renderring sequence name: $seq_name"

python render_scene.py --pkl_name $seq_name --base_path $DATA_BASE \
--draw_coco17 \
--draw_coco17_kps \
--draw_smpl \
--draw_human_pc \
--draw_scene_pc \
> $DATA_BASE/rgb_data/$seq_name$suffix".log"
