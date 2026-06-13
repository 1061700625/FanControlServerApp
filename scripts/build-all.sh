#!/usr/bin/env bash
# 构建全部发布包：x86/arm × url/iframe

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
cd "$ROOT"

for arch in amd64 arm64; do
  for ui in url iframe; do
    ARCH="$arch" UI_TYPE="$ui" "${ROOT}/scripts/build.sh"
  done
done
