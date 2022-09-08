# lightgbm gpu
cd /opt
# 1. install depencies
sudo apt-get install --no-install-recommends git cmake build-essential libboost-dev libboost-system-dev libboost-filesystem-dev 

# 2. git clone
# git clone --recursive https://github.com/microsoft/LightGBM
git clone --recursive git@github.com:microsoft/LightGBM.git; cd LightGBM

# 3. make 
mkdir build; cd build
cmake -DUSE_GPU=1 -DOpenCL_LIBRARY=/usr/local/cuda/lib64/libOpenCL.so -DOpenCL_INCLUDE_DIR=/usr/local/cuda/include/ ..
make -j4

# 4. install python package
pip install lightgbm --install-option=--gpu --install-option="--opencl-include-dir=/usr/local/cuda/include/" --install-option="--opencl-library=/usr/local/cuda/lib64/libOpenCL.so"

# xgboost gpu
cd /opt
# 1. git clone
git clone git@github.com:dmlc/xgboost.git; cd xgboost

# 2. make
mkdir build; cd build
cmake .. -DUSE_CUDA=ON
make -j4

# 3. install python package
cd ../python-package
python setup.py install
