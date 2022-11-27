# make all the folders
mkdir ~/MultiMC && cd ~/MultiMC
mkdir build
mkdir install
# clone the complete source
git clone --recursive https://github.com/MultiMC/Launcher.git src
# configure the project
cd build
cmake -DCMAKE_INSTALL_PREFIX=../install ../src
# build & install (use -j with the number of cores your CPU has)
make -j8 install
