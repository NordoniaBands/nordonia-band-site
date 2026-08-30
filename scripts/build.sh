#!/usr/bin/env bash
set -euo pipefail

if ! command -v hugo >/dev/null 2>&1; then
  HUGO_VER="${HUGO_VERSION:-0.147.9}"
  echo "hugo not found on PATH, downloading Hugo v${HUGO_VER}..."
  ARCHIVE="hugo_extended_${HUGO_VER}_linux-amd64.tar.gz"
  curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VER}/${ARCHIVE}" -o /tmp/hugo.tar.gz
  mkdir -p /tmp/hugo-bin
  tar -xzf /tmp/hugo.tar.gz -C /tmp/hugo-bin hugo
  export PATH="/tmp/hugo-bin:${PATH}"
fi

hugo
