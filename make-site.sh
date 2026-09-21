#!/bin/bash
# Wraps the artifact fragment into a full document for static hosting (GitHub Pages serves docs/).
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-status-bar-style" content="default">\n<meta name="apple-mobile-web-app-title" content="Recondition">\n<meta name="theme-color" content="#1F6B5C">\n<link rel="apple-touch-icon" href="icon-180.png">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
cp manifest.webmanifest sw.js icon-192.png icon-512.png icon-180.png docs/
echo "docs/ rebuilt"
