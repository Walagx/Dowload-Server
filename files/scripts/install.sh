#!/bin/bash

# List of packages
packages=(
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
go
adduser
apt
apt-utils
arp-scan
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
discord
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
google-chrome-stable
gpgv
grep
gstreamer1.0-libav
gstreamer1.0-plugins-ugly
gzip
hexchat
hostname
hydra
ifupdown
imagemagick
imagemagick-6-common
init
init-system-helpers
iproute2
iputils-ping
isc-dhcp-client
isc-dhcp-common
john
kali-archive-keyring
kali-defaults
kmod
less
libacl1
libapparmor1
libapt-pkg6.0
libargon2-1
libattr1
libaudit-common
libaudit1
libblkid1
libboost1.74-dev
libbpf1
libbsd0
libburn4
libbz2-1.0
libbz2-dev
libc-bin
libc6
libcap-ng0
libcap2
libcap2-bin
libchafa0
libcom-err2
libcrypt1
libcryptsetup12
libcupsfilters1
libdb5.3-dev
libdebconfclient0
libdevmapper1.02.1
libedit2
libexpat1-dev
libfdisk1
libffi-dev
libffi8
libfontembed1
libfuse2
libfuse3-3
libgcc-s1
libgcrypt20
libgdbm-dev
libgl1-mesa-dri:i386
libgl1-mesa-glx
libglu1-mesa
libgmp10
libgpg-error0
libgssapi-krb5-2
libicu72:i386
libidn2-0
libip4tc2
libisofs6
libiw30
libjansson4
libjpeg62-turbo
libjson-c5
libjxr0
libk5crypto3
libkeyutils1
libkmod2
libkrb5-3
libkrb5support0
liblocale-gettext-perl
liblouisutdml9
liblz4-1
liblzma-dev
liblzma5
libmagic1
libmcrypt4
libmd0
libmhash2
libmnl0
libmount1
libncurses5-dev
libncursesw5-dev
libncursesw6
libneon27-gnutls
libnewt0.52
libnftables1
libnftnl11
libnorm1
libp11-kit0
libpam-modules
libpam-modules-bin
libpam-runtime
libpam0g
libpcre2-8-0
libpgm-5.3-0
libpopt0
libproc2-0
libreadline-dev
libseccomp2
libselinux1
libsemanage-common
libsemanage2
libsepol2
libslang2
libsmartcols1
libsnacc-dev
libsphinxbase3
libsqlite3-dev
libss2
libssl-dev
libstdc++6
libsystemd-shared
libsystemd0
libtasn1-6
libtext-charwidth-perl
libtext-iconv-perl
libtext-wrapi18n-perl
libtinfo-dev
libtinfo6
libtirpc-common
libtss2-rc0
libudev1
libunistring2
libunwind-dev
libuuid1
libwireshark-data
libwireshark-dev
libwiretap-dev
libwsutil-dev
libxml2-dev
libxmlsec1-dev
libxtables12
libxxhash0
libzstd1
linux-xanmod-x64v3
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
ncurses-base
ncurses-bin
neofetch
netbase
nftables
openssl
orca
passwd
pcregrep
peazip
perl-base
php
php8.2-cli
php8.2-opcache
php8.2-readline
pidgin
pkg-config
policykit-1
procps
protobuf-compiler
pv
python3
python3-apt
python3-packaging
python3-pip
python3-psutil
python3-requests
python3-setuptools
readline-common
remmina
screenfetch
seahorse
sed
sensible-utils
sound-juicer
sound-theme-freedesktop
stacer
steam-launcher
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
thunderbird
tk-dev
tlp
tlp-rdw
toilet
tshark
tzdata
udev
unzip
usr-is-merged
util-linux
util-linux-extra
uuid-dev
vim
vim-common
vim-tiny
vino
wget
whiptail
xdg-user-dirs-gtk
xz-utils
yelp
zenity
zip
zlib1g
zlib1g-dev
zram-tools
zstd
)

# List of files
files=(
https://github.com/git-lfs/git-lfs/releases/download/v3.6.1/git-lfs-linux-amd64-v3.6.1.tar.gz
https://www.blender.org/download/release/Blender4.4/blender-4.4.3-linux-x64.tar.xz/
https://www.torproject.org/dist/torbrowser/14.5.2/tor-browser-linux-x86_64-14.5.2.tar.xz
https://github.com/peazip/PeaZip/releases/download/10.4.0/peazip_10.4.0.LINUX.GTK2-1_amd64.deb
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
