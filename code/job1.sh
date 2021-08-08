#!/bin/bash
#SBATCH -p nvidia
#SBATCH --gres=gpu:4
python run.py --do_train --do_eval --model_type roberta --model_name_or_path microsoft/codebert-base --train_filename ../dataset/python/train.jsonl --dev_filename ../dataset/python/valid.jsonl --output_dir model/python --max_source_length 128 --max_target_length 64 --beam_size 10 --train_batch_size 8 --eval_batch_size 8 --learning_rate 5e-5 --num_train_epochs 10
