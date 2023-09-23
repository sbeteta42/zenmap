# zenmap
script d'installation automatisée de zenmap pour Debian/Ubuntu/Kali

# Information
- Une version zenmap-kbr est disponible pour les fork de Debian mais l'application est dans un conteneur Docker ; cette version crée des problèmes au niveau des règles iptables et routage une fois installé.
- Le package zenmap qui existe par défaut est compilé pour les RedHat/Fedora/CentOs/RockyOS.
- Le script proposé convertit le .RPM en .DEB et règle les problèmes indiqués ci-dessus.

# Pré-requis
OS: Debian/Ubuntu/Kali avec Interface GUI
```bash
apt install git- y
```
# Installation
```bash
git clone https://github.com/sbeteta42/zenmap/
cd zenmap
chmod +x install_zenmap.sh
./install_zenmap.sh
```
