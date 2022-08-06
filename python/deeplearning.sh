# pytorch
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116

# tensorflow
pip install tensorflow-gpu

# paddlepaddle
pip install paddlepaddle-gpu==2.3.1.post116 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html
pip install --upgrade paddlenlp -i https://pypi.org/simple
pip install pgl

# nlp
pip install transformers
pip install -U 'spacy[cuda116]'
pip install jeiba
pip install hanlp

## reinforcement learning
pip install stable-baselines3[extra]
pip install pymaro

# pyg
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.12.0+cu113.html

# other
pip install --upgrade "jax[cuda]"
pip install nni
