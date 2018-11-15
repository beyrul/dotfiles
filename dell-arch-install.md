# Arch linux install
## set root password
```bash
passwd
```
## enable wireless
```bash
iw dev
wifi-menu -o <device>
```
## start sshd
```bash
systemctl start sshd.service
```

## partition, format, mount
```bash
parted -a optimal /dev/nvme0n1 mktable gpt && \
parted -a optimal /dev/nvme0n1 mkpart ESP fat32 1MiB 513MiB && \
parted -a optimal /dev/nvme0n1 set 1 boot on && \
parted -a optimal /dev/nvme0n1 name 1 boot && \
parted -a optimal /dev/nvme0n1 mkpart primary 513MiB 41GiB && \
parted -a optimal /dev/nvme0n1 name 2 root && \
parted -a optimal /dev/nvme0n1 mkpart primary 41GiB 60GiB && \
parted -a optimal /dev/nvme0n1 name 3 home && \
parted -a optimal /dev/nvme0n1 mkpart primary 60GiB -1 && \
parted -a optimal /dev/nvme0n1 name 4 store && \
mkfs.fat -F32 /dev/nvme0n1p1 && \
mkfs.ext4 /dev/nvme0n1p2 && mkfs.ext4 /dev/nvme0n1p3 && mkfs.ext4 /dev/nvme0n1p4 && \
mount /dev/nvme0n1p2 /mnt && \
mkdir /mnt/boot && mkdir /mnt/home && \
mount /dev/nvme0n1p1 /mnt/boot/ && mount /dev/nvme0n1p3 /mnt/home/
```

## Install base, change shell
```bash
pacstrap /mnt base openssh zsh git dhcp grub sudo base-devel vim iw wpa_supplicant dialog dhcpd i3 curl && \
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc && \
chsh -s /bin/zsh
```

genfstab -Up /mnt >> /mnt/etc/fstab

arch-chroot /mnt

echo base-arch > /etc/hostname

ln -sf /usr/share/zoneinfo/Europe/Sofia /etc/localtime

#Uncomment the needed locales in /etc/locale.gen, then generate them with:

locale-gen

## put in /etc/locale.conf
LANG=en_US.UTF-8
LC_COLLATE=C
LC_TIME=en_US.UTF-8
LC_MESSAGES=C


mkinitcpio -p linux

bootctl install

#create and edit /boot/loader/entries/arch.conf and add following where sda2 is current root partition
title          Arch Linux
linux          /vmlinuz-linux
initrd         /initramfs-linux.img
options        root=/dev/sda2 rw

#Modify /boot/loader/loader.conf to select the default entry
timeout 3
default arch

set root passwd


+++++++Desktop+++++++++++++

pacman -S xfce4 xfce4-goodies chromium xorg-server xorg-xkb-utils xorg-server-utils xf86-input-mouse \
xf86-input-keyboard xf86-video-nv xf86-video-vesa xorg-fonts-100dpi ttf-bitstream-vera freetype2 \
xorg-fonts-type1 alsa-utils xorg-xinit networkmanager networkmanager-openconnect networkmanager-openvpn \
networkmanager-pptp networkmanager-vpnc wget vi vim emacs mc lightdm lightdm-gtk-greeter gnome-keyring \
htop libva-intel-driver acpi alsa-tools alsa-utils tlp zip p7zip




//add some user

useradd -m -d /home/usr -G wheel -s /bin/zsh usr

sudo systemctl enable lightdm.service

>>install yaourt
#from normal user that exists in sudores

https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz

tar -xvf package-query.tar.gz

makepkg -s

sudo pacman -U ./<package name>
