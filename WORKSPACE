workspace(
    name = "hello-bazel",
)

# During development if local repo is wanted
#local_repository(
#    name = "bazel_toolchains_yocto",
#    path = "/work/git/bazel-toolchains-yocto",
#)
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
git_repository(
    name = "bazel_toolchains_yocto",
    remote = "https://github.com/pberginkonsult/bazel-toolchains-yocto.git",
    commit = "6137d475fa3a16a4b795c7852c55c90a6bb4f69d",
)


load("@bazel_toolchains_yocto//yocto:repositories.bzl", "bazel_toolchains_yocto_dependencies")

bazel_toolchains_yocto_dependencies()

load("@bazel_toolchains_yocto//yocto:defs.bzl", "http_yocto_toolchain_archive", "http_yocto_toolchain_file", "local_yocto_toolchain")

http_yocto_toolchain_file(
    name = "cortexa57-poky-linux_new",
    build_file = "@//third_party/cortexa57-poky-linux:BUILD.cortexa57-poky-linux",
    environment_setup = "environment-setup-cortexa57-poky-linux",
    sha256 = "de5340bf0bc5a535988d63e0ad88792658982500ef265403394705b844b9c10f",
    urls = ["https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/toolchain/x86_64/poky-glibc-x86_64-core-image-sato-cortexa57-qemuarm64-toolchain-5.0.10.sh"],
)
