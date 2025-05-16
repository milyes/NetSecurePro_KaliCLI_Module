#!/bin/bash
# Connexion SSH automatique à une VM Kali distante

REMOTE_IP="192.168.2.37"
SSH_PORT="22"
REMOTE_USER="root"

echo "🔐 Connexion à Kali à distance via SSH..."
ssh -p $SSH_PORT $REMOTE_USER@$REMOTE_IP
