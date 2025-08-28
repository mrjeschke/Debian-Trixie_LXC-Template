# Makefile und LXC-Template für Debian Trixie
Zeitzone Europe/Berlin\
ping für user pgid 1000-2000\
sudo curl needrestart installiert\
boot-target multi-user

## Template erstellen
In Proxmox als root einloggen\
```
apt-get install dab
mkdir dab
cd dab
wget https://raw.githubusercontent.com/mrjeschke/Debian-Trixie_LXC-Template/refs/heads/main/dab.conf
wget https://raw.githubusercontent.com/mrjeschke/Debian-Trixie_LXC-Template/refs/heads/main/Makefile
make
```
Template nach /var/lib/vz/template/cache/ kopieren
