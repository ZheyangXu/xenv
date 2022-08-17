import torch
from torch.utils import benchmark


def compu_bencmark(device):
    dtype = torch.float16
    n = 1024 * 16
    a = torch.randn(n, n).type(dtype).to(device)
    b = torch.randn(n, n).type(dtype).to(device)
    
    t = benchmark.Timer(
        stmt='a @ b',
        globals={'a': a, 'b': b}
    )
    x = t.timeit(50)
    return 2 * n ** 3 / x.median / 1e12


if __name__ == '__main__':
    if torch.cuda.is_available():
        device = torch.device('cuda')
    elif torch.backends.mps.is_available():
        device = torch.device('mps')
    else:
        device = torch.device('cpu')
    print('Using device: {}'.format(device))
    ben = compu_bencmark(device)
    print(ben)
