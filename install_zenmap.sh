# maj du système
echo # [1/8] Mise à jour du système... please wait !"
sleep 5
apt update -y && apt full upgrade -y
clear

# Download des dépendances fonctionnelles pour zenmap en environnement Debian/Ubuntu/kali
echo "[2/8] Download des dépendances fonctionnelles pour zenmap en environnement Debian/Ubuntu/kali"
sleep 10
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
wget http://azure.archive.ubuntu.com/ubuntu/pool/universe/p/pygobject-2/python-gobject-2_2.28.6-14ubuntu1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/p/pycairo/python-cairo_1.16.2-2ubuntu2_amd64.deb
clear

# Installation des dépendances fonctionelles
echo "[3/8] Installation des dépendances fonctionelles"
sleep 5
dpkg -i python-gobject-2_2.28.6-14ubuntu1_amd64.deb 
dpkg -i python-cairo_1.16.2-2ubuntu2_amd64.deb
dpkg -i python-gtk2_2.24.0-5.1ubuntu2_amd64.deb 
apt --fix-broken install -y
clear

# Installation de alien - convertisseur de paquet RPM en .DEB 
echo"[4/8] Installation de alien - convertisseur de paquet RPM en .DEB"
sleep 5
apt install alien -y

# Download de ZENMAP
echo "[5/8] Download de zenmap"
sleep 5
wget https://nmap.org/dist/zenmap-7.94-1.noarch.rpm
clear

# On convertit le fichier zenmap.rpm en zenmap.deb
echo " [6/8] On convertit le fichier zenmap.rpm en zenmap.deb"
sleep 5
alien zenmap-7.94-1.noarch.rpm
clear

# Installation de ZENMAP
echo " [7/8] Installation de ZENMAP..."
sleep 5
dpkg -i zenmap_7.94-2_all.deb
echo "[8/8] Installation de Zenmap terminé !"
