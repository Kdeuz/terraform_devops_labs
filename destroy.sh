#!/usr/bin/env bash
set -e

echo "=== Destruction de l'infrastructure ==="
cd infra
terraform destroy -auto-approve

echo "=== Ressources détruites avec succès ==="
