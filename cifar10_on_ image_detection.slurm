#!/bin/bash

#SBATCH --job-name=cifar10_on_image_detection
#SBATCH --output=../logs/cifar10_on_image_detection.out
#SBATCH --error=../logs/cifar10_on_image_detection.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=80GB
#SBATCH --time=48:00:00
#SBATCH --gres=gpu:a100

# job info
train_file=train

# start running
echo -e "GPUS = $CUDA_VISIBLE_DEVICES\n"
nvidia-smi

source /gpfs/scratch/zhangs18/Miniconda3/etc/profile.d/conda.sh
conda activate image

cd /gpfs/scratch/$USER/Radiology_Image_Detection

python -m ${train_file} 
