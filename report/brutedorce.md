## 🔹 Part 1B: Dictionary Attack Simulation (Scripted)

### Scenario
- Script `scripts/bruteforce_dictionary.sh` executed a dictionary-based brute-force attack against user `testuser`.
- Passwords were read from `scripts/passwords.txt`.
- After several failed attempts, the correct password was discovered and login succeeded.

### Evidence
**Failed Attempts:**
Jul 30 13:29:20 bish-VirtualBox sshd[3734]: Failed password for invalid user cyberbiz from 127.0.0.1 port 48052 ssh2
Jul 30 13:29:28 bish-VirtualBox sshd[3734]: Failed password for invalid user cyberbiz from 127.0.0.1 port 48052 ssh2
Jul 30 14:09:13 bish-VirtualBox sshd[4284]: Failed password for thor from 127.0.0.1 port 58044 ssh2
Jul 30 14:09:17 bish-VirtualBox sshd[4289]: Failed password for thor from 127.0.0.1 port 58050 ssh2
Jul 30 14:09:20 bish-VirtualBox sshd[4293]: Failed password for thor from 127.0.0.1 port 58058 ssh2
Jul 30 14:09:26 bish-VirtualBox sshd[4297]: Failed password for thor from 127.0.0.1 port 58334 ssh2
Jul 30 14:09:30 bish-VirtualBox sshd[4301]: Failed password for thor from 127.0.0.1 port 58340 ssh2

**Successful login:**
Jul 30 14:09:31 bish-VirtualBox sshd[4307]: Accepted password for thor from 127.0.0.1 port 51412 ssh2

Analysis

    Logs show repeated failed login attempts followed by a successful login.

    This mirrors real-world brute-force attacks where attackers use password dictionaries.

    Preventive measures: Fail2Ban, account lockout policies, and enforcing SSH key authentication.

###  Conclusion

The simulation demonstrates how dictionary attacks can eventually succeed if weak passwords are used.


