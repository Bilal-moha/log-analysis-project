#/bin/bash
# Brute-force attack simulation script
# Author: bilal-moha
# Description: Simulates SSH brute-force attempts using common usernames

# target host
TARGET="localhost"

# list of common username attacker try

USERNAMES=("root" "admin" "test" "ubuntu" "cyberbiz")
echo "[*] starting brute-force simulation against $TARGET"

for user in "${USERNAMES[@]}"; do
	echo "[*] trying user: $user"
	for i in {1..3}; do
		ssh -o StrictHostKeyChecking=no ${user}@${TARGET} "exit"

	done
done

echo "[*] simulation complete. check /var/log/auth.log for result"
 
