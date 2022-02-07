#!/usr/bin/env bash -e
#
#  Terramorf setup script
#  Terramorf is a thin wrapper for Terraform
#  Author: Everaldo Canuto <everaldo.canuto@gmail.com>
#

GITHUBRAW_URL="https://raw.githubusercontent.com"
TERRAMORF_URL="$GITHUBRAW_URL/ecanuto/terramorf/main/terramorf"
TERRAMORF_BIN="/usr/local/bin/terramorf"

echo "Downloading terramorf..."
curl -so $TERRAMORF_BIN $TERRAMORF_URL
chmod +x $TERRAMORF_BIN
echo "Setup completed"
