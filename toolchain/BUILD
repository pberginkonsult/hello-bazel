package(default_visibility = ["//visibility:public"])

load(":cc_toolchain_config.bzl", "gcc_toolchain_config", "clang_toolchain_config")


gcc_toolchain_config(name = "gcc_toolchain_config")
clang_toolchain_config(name = "clang_toolchain_config")

filegroup(name = "empty")

cc_toolchain(
    name = "linux_x86_64_gcc_toolchain",
    toolchain_identifier = "local_gcc",
    toolchain_config = ":gcc_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)

toolchain(
    name = "cc_toolchain_for_linux_x86_64_gcc",
    toolchain = ":linux_x86_64_gcc_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
)

cc_toolchain(
    name = "linux_x86_64_clang_toolchain",
    toolchain_identifier = "local_clang",
    toolchain_config = ":clang_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)

toolchain(
    name = "cc_toolchain_for_linux_x86_64_clang",
    toolchain = ":linux_x86_64_clang_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
)