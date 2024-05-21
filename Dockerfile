FROM debian:stretch-slim

# fuse-device-plugin binary based on architecture
ARG build_arch
COPY test-device-plugin-${build_arch} /usr/bin/test-device-plugin

# replace with your desire device count
CMD ["fuse-device-plugin", "--mounts_allowed", "1"]
