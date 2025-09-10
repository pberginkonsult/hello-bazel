# hello-bazel

This repo shall be a sandbox for learning and trying bazel builds with different toolchains

## Build with clang natively installed

On Ubuntu 24.04 install clang-20.

```
sudo apt install clang-20
```

Followed tutorial at [https://bazel.build/versions/8.4.0/tutorials/ccp-toolchain-config](https://bazel.build/versions/8.4.0/tutorials/ccp-toolchain-config) and created toolchain files in directory `toolchain`.

Building with `bazel build //...` will use clang-20 to build the binaries.
