#!/bin/bash

#OAR -n MNIST-Resnet18
#OAR -t gpu
#OAR -l /nodes=1/gpudevice=1,walltime=6:00:00
#OAR --stdout scripts_logs/MNIST-Resnet18.out
#OAR --stderr scripts_logs/MNIST-Resnet18.err
#OAR --project pr-cg4n6

source /applis/environments/conda.sh
conda activate CGDetection

cd ~/code/CGvsNI-SSL/src
python ./main.py --train-test --data MNIST --nb_samples_total 60000 --nb_samples_test 10000 --nb_samples_labeled 1000 --img_mode RGB --model Resnet18 --method TemporalEnsembling --epochs 300 --no-verbose
