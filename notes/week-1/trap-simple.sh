#!/bin/bash
set -euo pipefail


# trap 'echo "Ctrl+C pressed"' SIGINT
trap "echo Terminating; clean_up; exit" SIGTERM
sleep 1
