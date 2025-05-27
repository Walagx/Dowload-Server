#!/bin/bash

# List of packages
packages=(
flatpak
wget
curl
git
vim
screenfetch
neofetch
zram-tools
blueman
clap
clang
cipo
go
adduser
apt
apt-utils
atril
base-files
base-passwd
bash
bash-completion
binwalk
blueman
brave-browser
bsdutils
build-essential
ca-certificates
cargo
cgpt
cinnamon-core
clang
cmake
coreutils
cpio
cpufrequtils
cron
cron-daemon-common
cups
curl
dash
debconf
debconf-i18n
debian-archive-keyring
debianutils
debootstrap
deja-dup
diffutils
dmidecode
dmsetup
dos2unix
dpkg
e2fsprogs
eog
fdisk
figlet
findutils
fonts-liberation
fonts-noto
fzf
gcc
gcc-12-base
gdebi
gdisk
gedit
git
gnome-characters
gnome-core
gnome-disk-utility
gnome-font-viewer
gnome-games
gnome-logs
gnome-screenshot
gnome-software
gnome-system-monitor
gnote
golang
gpgv
grep
gstreamer1.0-libav
gstreamer1.0-plugins-ugly
gzip
hexchat
hostname
imagemagick
imagemagick-6-common
init
init-system-helpers
iproute2
iputils-ping
isc-dhcp-client
isc-dhcp-common
less
llvm
login
logrotate
logsave
lynx
lz4
make
mate-themes
mawk
mesa-vulkan-drivers
mesa-vulkan-drivers:i386
mount
musl-tools
nano
neofetch
netbase
nftables
openssl
orca
passwd
pcregrep
php
php8.2-cli
php8.2-opcache
php8.2-readline
pidgin
pkg-config
pv
python3
python3-apt
python3-packaging
python3-pip
python3-psutil
python3-requests
python3-setuptools
readline-common
screenfetch
sed
sensible-utils
sound-juicer
sound-theme-freedesktop
stacer
sudo
synaptic
system-config-printer
systemd
systemd-sysv
sysvinit-utils
tar
task-desktop
task-laptop
task-ssh-server
tasksel
tasksel-data
tlp
tlp-rdw
vim
wget
zram-tools
)

# List of files
files=(
https://www.blender.org/download/release/Blender4.4/blender-4.4.3-linux-x64.tar.xz/
https://discord.com/api/download?platform=linux
)


# Updates Package list
echo -e "UPDATING PACKAGES..."
sudo apt update
sudo apt upgrade -y

# Install packages function
install_packages() {
  echo -e "\e[36mInstalling packages...\e[0m"
  for pkg in ${packages[@]}; do
    echo "Installing $pkg..."
    sudo apt install $pkg -y
  done
  echo -e "\e[32mAll packages packages have been installed!\e[0m"
}

# Runs the install packages fuction
install_packages

# Download files function
download_files() {
	echo -e "\e[36mStarting Download\e[0m"
	for url in ${files[@]}; do
	echo -e "\e[36mDownloading: $url\e[0m"
	wget -q --show-progress $url
	done
	echo -e "\e[32mAll files have been downloaded!\e[0m"
}

# Runs the download files fuction
download_files

# Adds alias
echo "# Git alias" >> ~/.bashrc
echo 'alias ga="git add ."' >> ~/.bashrc
echo 'alias gc="git commit -m"' >> ~/.bashrc
echo 'alias gp="git push origin"' >> ~/.bashrc
echo 'alias gu="git pull origin"' >> ~/.bashrc
echo 'alias gcl="git clone"' >> ~/.bashrc

echo "# Other alias" >> ~/.bashrc
echo 'alias fman="compgen -c | fzf | xargs man"' >> ~/.bashrc
source ~/.bashrc

# Installs brave
curl -fsS https://dl.brave.com/install.sh | sh


# Installs Nodejs

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.16.0".
nvm current # Should print "v22.16.0".

# Verify npm version:
npm -v # Should print "10.9.2".



# Installs rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.bashrc


# Installs pyenv
curl -fsSL https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init - bash)"' >> ~/.bashrc

pyenv install 3.13.3
pyenv global 3.13.3
