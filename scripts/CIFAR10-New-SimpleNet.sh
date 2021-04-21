#!/bin/bash

#OAR -n CIFAR10-New-SimpleNet
#OAR -t gpu
#OAR -l /nodes=1/gpudevice=1,walltime=2:00:00
#OAR --stdout scripts_logs/CIFAR10-New-SimpleNet.out
#OAR --stderr scripts_logs/CIFAR10-New-SimpleNet.err
#OAR --project pr-cg4n6

source /applis/environments/conda.sh
conda activate CGDetection

cd ~/code/CGvsNI-SSL/src
python ./main.py --train-test --data CIFAR10 --nb_samples_test 10000 --nb_samples_labeled 1000 --img_mode RGB --model SimpleNet --method TemporalEnsemblingNewLoss --epochs 300 --no-verbose