#!/bin/bash
#
#SBATCH --cpus-per-task=2
#SBATCH --time=00:06:00
#SBATCH --mem=10GB
#SBATCH --job-name=DecompAtt
#SBATCH --mail-type=END
#SBATCH --mail-user=lj1035@nyu.edu
#SBATCH --output=slurm_%j_32.out
#SBATCH --gres=gpu:1
#SBATCH --nodes=1

module load pytorch/python3.5/0.2.0_3

module load cuda/8.0.44
module load cudnn/8.0v5.1

time python3 Decomp_Attention.py --batch_size 32 --encoder 'encoder_32.pt' --model 'model_32.pt'
