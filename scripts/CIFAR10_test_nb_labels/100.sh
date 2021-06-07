#!/bin/bash

#OAR -n CIFAR10_test_nb_labels_100
#OAR -t gpu
#OAR -l /nodes=1/gpudevice=1,walltime=6:00:00
#OAR --stdout CIFAR10_test_nb_labels/scripts_logs/CIFAR10_test_nb_labels_100.out
#OAR --stderr CIFAR10_test_nb_labels/scripts_logs/CIFAR10_test_nb_labels_100.err
#OAR --project cg4n6

source /applis/environments/conda.sh
conda activate CGDetection

cd ~/code/CGvsNI-SSL/src
python ./main.py --train-test --folder CIFAR10_test_nb_labels --name 100 --data CIFAR10 --nb_samples_test 10000 --nb_samples_labeled 100 --img_mode RGB --model SimpleNet --max_lr 0.0003 --method TemporalEnsemblingNewLoss --epochs 300 --no-verbose