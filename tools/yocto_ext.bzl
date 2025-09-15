load("@bazel_toolchains_yocto//yocto:defs.bzl", "local_yocto_toolchain")

def _impl(mctx):
    for mod in mctx.modules:
        for t in mod.tags.local_sdk:
            local_yocto_toolchain(
                name = t.name,
            )

local_sdk = tag_class(
    attrs = {
        "name": attr.string(mandatory = True),
    },
)

yocto_ext = module_extension(
    implementation = _impl,
    tag_classes = {"local_sdk": local_sdk},
)
