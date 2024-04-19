# maj du système
echo Mise à jour du système... please wait !"
apt update -y && apt full upgrade -y
clear

# installation de alien - convertisseur de paquet RPM en .DEB 
echo installation de alien - convertisseur de paquet RPM en .DEB"
sleep 10
apt install alien -y

# download de zenmap
echo "Download de zenmap"
sleep 10
wget https://nmap.org/dist/zenmap-7.94-1.noarch.rpm
clear

# on convertit zenmap.rpm en zenmap.deb
echo "on convertit zenmap.rpm en zenmap.deb"
sleep 5
alien zenmap-7.94-1.noarch.rpm
clear

# Download des dépendances fonctionnelles pour zenmap en environnement Debian/Ubuntu/kali
echo "Download des dépendances fonctionnelles pour zenmap en environnement Debian/Ubuntu/kali"
sleep 10
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
wget http://azure.archive.ubuntu.com/ubuntu/pool/universe/p/pygobject-2/python-gobject-2_2.28.6-14ubuntu1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/p/pycairo/python-cairo_1.16.2-2ubuntu2_amd64.deb
clear

# installation des dépendances fonctionelles
echo "installation des dépendances fonctionelles"
sleep 5
dpkg -i python-gobject-2_2.28.6-14ubuntu1_amd64.deb 
dpkg -i python-cairo_1.16.2-2ubuntu2_amd64.deb
dpkg -i python-gtk2_2.24.0-5.1ubuntu2_amd64.deb 
apt --fix-broken install -y
clear

# installation de zenmap
echo "installation de zenmap..."
sleep 5
dpkg -i zenmap_7.94-2_all.deb
echo " Installation de Zenmap terminé !"
