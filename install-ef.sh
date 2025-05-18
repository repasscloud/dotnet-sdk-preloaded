#!/bin/sh

ARCH=$(uname -m)

if [ "$ARCH" = "x86_64" ] || [ "$ARCH" = "aarch64" ]; then
    dotnet tool install --global dotnet-ef --version 9.0.5
else
    echo "⚠️ Skipping dotnet-ef install for unsupported arch: $ARCH"
fi
