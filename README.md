# Makefile und LXC-Template für Debian Trixie
Zeitzone Europe/Berlin\
ping für user pigd 1000-2000\
sudo curl needrestart installiert\
boot-target multi-user\
LXC-Container https://drive.google.com/file/d/14cau6wVMN8ByG-eij4bjelvXHQQYuRJI/view?usp=sharing\

## Container erstellen
apt-get install dab\
mkdir dab\
cd dab\
wget https://raw.githubusercontent.com/mrjeschke/Debian-Trixie_LXC-Template/refs/heads/main/dab.conf \
wget https://raw.githubusercontent.com/mrjeschke/Debian-Trixie_LXC-Template/refs/heads/main/Makefile \
make
