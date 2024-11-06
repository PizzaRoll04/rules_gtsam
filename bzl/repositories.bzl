"""Macro to load transitive dependencies for gtsam"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def gtsam_repositories():
    # Latest commit as of November 6, 2024 that passes all CI
    maybe(
        http_archive,
        name = "com_github_nelhage_rules_boost",
        sha256 = "54f51d85a6c122949c65adb4a3b0bda8218e03148e8b1903e445af6717220990",
        strip_prefix = "rules_boost-8fa193c4e21daaa2d46ff6b9c2b5a2de70b6caa1",
        urls = ["https://github.com/nelhage/rules_boost/archive/8fa193c4e21daaa2d46ff6b9c2b5a2de70b6caa1.tar.gz"],
    )
    # Latest release as of November 6, 2024
    maybe(
        http_archive,
        name = "eigen",
        build_file = "@rules_gtsam//third_party:eigen.BUILD",
        sha256 = "8586084f71f9bde545ee7fa6d00288b264a2b7ac3607b974e54d13e7162c1c72",
        strip_prefix = "eigen-3.4.0",
        urls = ["https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.tar.gz"],
    )
    # Latest release as of November 6, 2024
    maybe(
        http_archive,
        name = "gtsam",
        build_file = "@rules_gtsam//third_party:gtsam.BUILD",
        sha256 = "8b44d6b98a3b608664d1c9a7c1383a406550499d894533bb0183e6cf487e6457",
        strip_prefix = "gtsam-4.2.0",
        urls = ["https://github.com/borglab/gtsam/archive/4.2.0.tar.gz"],
    )
