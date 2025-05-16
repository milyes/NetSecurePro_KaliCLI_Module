#!/bin/bash
# NetSecurePro - Intégration IA CLASS_CLONE avec accès mobile intelligent

PROJECT_NAME="AITERMINAL_KALI_CLI"
CLASS_CLONE_DIR="$HOME/NetSecurePro/CLASS_CLONE"
INPUT_FILE_ZONE="$CLASS_CLONE_DIR/input_files"
MODULE_NAME="MODULE_KALI_CLI_ACCESS"
MODULE_DIR="$CLASS_CLONE_DIR/$MODULE_NAME"

mkdir -p "$CLASS_CLONE_DIR"
echo "🔄 Base CLASS_CLONE vérifiée : $CLASS_CLONE_DIR"

mkdir -p "$INPUT_FILE_ZONE"
echo "🔄 Zone INPUT_FILE créée : $INPUT_FILE_ZONE"

mkdir -p "$MODULE_DIR"
echo "📁 Module IA : $MODULE_NAME ajouté dans CLASS_CLONE"

cp -r $HOME/$PROJECT_NAME/* "$MODULE_DIR/" 2>/dev/null

cat <<EOF > "$MODULE_DIR/DESCRIPTION.txt"
Nom du module : $MODULE_NAME
Plateforme : NetSecurePro
Fonction : Installation automatique Kali Linux CLI IA
Zone : CLASS_CLONE > INPUT_FILE > MODULE_KALI_CLI_ACCESS
Accès mobile : Activé via IA_TERMINAL
Intelligence Internet : Active
EOF

echo "✅ Fichier de description ajouté"
ls "$MODULE_DIR"
echo "🚀 Intégration complète du module dans NetSecurePro."
