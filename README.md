# cxxzoo

#### A repository containing commonly used deep learning models written in C++ using LibTorch

## Steps to build project
1. Download and extract the pyTorch C++ frontend library [from here](https://pytorch.org/get-started/locally/)
2. Now generate build files with

```sh
mkdir build && cd build
cmake -D CMAKE_PREFIX_PATH=path/to/libtorch/share/cmake \                                                                                                          [5:37:05]
-D CMAKE_CXX_FLAGS="-stdlib=libc++ -I/usr/local/include" \
..
```
3. Build the project

```sh
# in the build directory run
cmake --build . --config Release
```
> the binaries are now built in the `/bin` folder in the project root.

## Caveats
⚠️ No support for CUDA
