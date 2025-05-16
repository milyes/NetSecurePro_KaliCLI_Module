#!/bin/bash
# Lancement CLI IA Terminal avec options Kali

echo "==========================="
echo " AITERMINAL LINUX - MENU "
echo "==========================="
echo "1. Installer Kali CLI sur VPS"
echo "2. Se connecter à la VM Kali distante"
echo "3. Quitter"
read -p "Choix : " CHOICE

case $CHOICE in
  1) bash create_kali_vm_cli.sh ;;
  2) bash run_kali_remote.sh ;;
  3) exit ;;
  *) echo "Option invalide" ;;
esac
