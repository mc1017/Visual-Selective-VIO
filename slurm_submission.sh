#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mc620
export PATH=/vol/bitbucket/mc620/NeuralCDE-VIO/venv/bin/:$PATH

source /vol/bitbucket/mc620/NeuralCDE-VIO/venv/bin/activate
source activate
source /vol/cuda/12.2.0/setup.sh
/usr/bin/nvidia-smi
uptime

python3 train.py --experiment_name="VSVIO-Original" --resume=081lm7sk --pretrain "/vol/bitbucket/mc620/Visual-Selective-VIO/VSVIO-Original/checkpoints/078.pth"