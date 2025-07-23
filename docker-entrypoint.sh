#!/bin/sh

if [ "$#" -gt 0 ]; then
  # Got started with arguments
  tini -s -- n8n "$@"
else
  # Got started without arguments
  tini -s -- n8n
fi
