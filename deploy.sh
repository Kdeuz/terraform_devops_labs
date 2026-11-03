#!/usr/bin/env bash
set -e

echo "=== Déploiement de l'infrastructure ==="
cd infra
terraform init
terraform apply -auto-approve

echo "=== Déploiement terminé ! ==="
echo "Application disponible sur : http://localhost:8000"
