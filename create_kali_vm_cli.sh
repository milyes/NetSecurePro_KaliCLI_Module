#!/bin/bash
# AITERMINAL_LINUX_CMD - Kali Linux CLI / VPS Setup

echo "🔧 Mise à jour système..."
apt update && apt upgrade -y

echo "📦 Installation outils de base..."
apt install -y openssh-server curl wget sudo nano zip unzip net-tools

echo "🛡️ Outils de pentest / analyse réseau..."
apt install -y nmap hydra sqlmap john netcat dnsutils aircrack-ng

echo "🔍 Installation Metasploit Framework..."
curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfupdate | bash

echo "🔐 Activation SSH distant..."
systemctl enable ssh
systemctl start ssh

echo "⚙️ Configuration SSH root (optionnel)"
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
systemctl restart ssh

echo "✅ Installation terminée. Kali CLI prêt pour IA Terminal."
echo "🌐 Connexion SSH : ssh root@<IP> (port 22)"
