# hello-bazel

This repo shall be a sandbox for learning and trying bazel builds with different toolchains.

Currently there are two toolchains implemented, one for gcc and one for clang.

## Build with clang natively installed

On Ubuntu 24.04 install clang-20.

```
sudo apt install clang-20
```

Followed tutorial at [https://bazel.build/versions/8.4.0/tutorials/ccp-toolchain-config](https://bazel.build/versions/8.4.0/tutorials/ccp-toolchain-config) and created toolchain files in directory `toolchain`.

Building with `bazel build //...` will use clang-20 to build the binaries.

## Select toolchain

### Build with gcc

```
bazel build -s //... --extra_toolchains=//toolchain:cc_toolchain_for_linux_x86_64_gcc
```

### Build with clang

```
bazel build -s //... --extra_toolchains=//toolchain:cc_toolchain_for_linux_x86_64_clang
```
