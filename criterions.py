import torch

def my_loss(output, target):
    loss = torch.mean((output - target)**2)
    return loss
