#!/usr/bin/env bash
#
#  Terramorf setup script
#  Terramorf is a thin wrapper for Terraform
#  Copyright waived 2022, Everaldo Canuto <everaldo.canuto@gmail.com>
#

set -e

GITHUBRAW_URL="https://raw.githubusercontent.com"
TERRAMORF_URL="$GITHUBRAW_URL/noverde/terramorf/main/terramorf"
TERRAMORF_BIN="/usr/local/bin/terramorf"

echo "Downloading terramorf..."
curl -so $TERRAMORF_BIN $TERRAMORF_URL
chmod +x $TERRAMORF_BIN
echo "Setup completed"
