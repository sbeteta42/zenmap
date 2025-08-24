# 🎯 Zenmap – Interface graphique pour Nmap 

![OS](https://img.shields.io/badge/OS-Linux%20%7C%20Windows%20%7C%20macOS-blue)
![Status](https://img.shields.io/badge/Status-Lab%20Ready-success)
![License](https://img.shields.io/badge/License-MIT-green)
![Stack](https://img.shields.io/badge/Stack-Nmap%20%7C%20Python-orange)

---

##  Table des matières  
1. [Présentation](#-présentation)  
2. [Fonctionnalités principales](#-fonctionnalités-principales)  
3. [Installation](#-installation)  
4. [Utilisation rapide](#-utilisation-rapide)  
5. [Scripts inclus](#-scripts-inclus)  
6. [Contribution](#-contribution)  
7. [Licence](#-licence)

---

##  Présentation  
**Zenmap** est l’interface graphique officielle de **Nmap**, multi-plateforme (Linux, Windows, macOS…) et open-source, conçue pour faciliter les scans de sécurité réseau tant pour les débutants que pour les utilisateurs avancés :contentReference[oaicite:1]{index=1}.
 Une version zenmap-kbr est disponible pour les fork de Debian mais l'application est dans un conteneur Docker ; cette version crée des problèmes au niveau des règles iptables et routage une fois installé.
- Le package zenmap qui existe par défaut est compilé pour les RedHat/Fedora/CentOs/RockyOS.
- Le script proposé convertit le .RPM en .DEB et règle les problèmes indiqués ci-dessus.

---

##  Fonctionnalités principales  
- Création de profils de scan réutilisables  
- Éditeur de commandes interactif  
- Comparaison visuelle des résultats de scans  
- Base de données interne pour enregistrer les résultats et les rechercher :contentReference[oaicite:2]{index=2}

---

##  Installation  
```bash
git clone https://github.com/sbeteta42/zenmap/
cd zenmap
chmod +x install_zenmap.sh
./install_zenmap.sh
```
---

## Licence
MIT - libre, glandouille-friendly !
