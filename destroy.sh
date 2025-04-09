#!/bin/bash

echo "🔄 Navegando al directorio de Terraform..."
cd ~/todo-flask-app/terraform || { echo "❌ No se encontró el directorio de Terraform"; exit 1; }

echo "⚠️ Ejecutando 'terraform destroy'..."
terraform destroy -auto-approve

echo "✅ Recursos destruidos."

echo "🧽 Eliminando entorno virtual y archivos temporales..."

cd ~/todo-flask-app || { echo "❌ No se encontró el directorio base"; exit 1; }

# Opcional: eliminar venv y __pycache__
rm -rf venv __pycache__

echo "✅ Entorno limpio. Todo ha sido destruido."
