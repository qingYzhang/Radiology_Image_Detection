#!/bin/bash

#SBATCH --job-name=cifar10_on_image_detection
#SBATCH --output=cifar10_on_image_detection.out
#SBATCH --error=cifar10_on_image_detection.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=80GB
#SBATCH --time=48:00:00
#SBATCH --gres=gpu
#SBATCH --partition=a100_1,a100_2,v100,rtx8000

# job info

# Singularity path
ext3_path=/gpfs/scratch/$USER/Radiology_Image_Detection
sif_path=/gpfs/scratch/$USER/Radiology_Image_Detection

train_file=train

# start running
singularity exec --nv \
--overlay ${ext3_path}:ro \
${sif_path} /bin/bash -c "
source /ext3/env.sh
cd //gpfs/scratch/$USER/Radiology_Image_Detection


python -m ${train_file} 
"
