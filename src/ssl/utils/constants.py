TRAIN_STEP = 30
LOG_INTERVAL = 10

DATA_NO_LABEL = -1  # Label of the unlabeled data
VAL_NUMBER = 2000
TEST_RUNS = 3
ONLY_SUP_RUNS = 10
NB_IMGS_TO_SHOW = 9
BATCH_SIZE = 100

DATALOADER_PARAMS_CUDA = {'batch_size': BATCH_SIZE, 'shuffle': False, 'num_workers': 8, 'pin_memory': True}
DATALOADER_PARAMS_NO_CUDA = {'batch_size': BATCH_SIZE, 'shuffle': False}
