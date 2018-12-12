FROM gitpod/workspace-full:latest

USER root

# Install mozjs build dependencies.
RUN apt-get update \
 && apt-get install -y --no-install-recommends htop autoconf2.13 \
 && rm -rf /var/lib/apt/lists/*

# Build with clang instead of gcc.
ENV CC clang-6.0
ENV CXX clang++-6.0
ENV HOST_CC clang-6.0
ENV HOST_CXX clang++-6.0
