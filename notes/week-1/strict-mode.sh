#!/bin/bash
set -euxo pipefail

solana --version

solana --help | grep vote-account
