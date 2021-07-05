#!/bin/bash

#OAR -n CGvsNI-testArtlantis-onlysup
#OAR -t gpu
#OAR -l /nodes=1/gpudevice=1,walltime=16:00:00
#OAR --stdout scripts_logs/CGvsNI-testArtlantis-onlysup.out
#OAR --stderr scripts_logs/CGvsNI-testArtlantis-onlysup.err
#OAR --project cg4n6

source /applis/environments/conda.sh
conda activate CGDetection

cd ~/code/CGvsNI-SSL/src
python ./test_cgvsni.py --datasets_to_use Artlantis --label_mode Biclass --img_mode RGB --nb_samples_train 10080 --nb_samples_test 720 --nb_samples_labeled 10080 --max_lr 0.0002 --method OnlySup --epochs 300 --no-verbose
