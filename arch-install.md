# Arch linux install
## set root password
```bash
passwd
```
## start sshd
```bash
systemctl start sshd.service
```
## partitioning
```bash
parted -a optimal /dev/sda

mktable gpt

mkpart primary 1 3
name 1 grub
set 1 bios_grub on

mkpart primary 3 2051
name 2 boot

mkpart primary 2051 11000
name 3 root

mkpart primary 11000 -1
name 4 home
```
## format partitions
```bash
mkfs.ext4 /dev/sda2 && mkfs.ext4 /dev/sda3 && mkfs.ext4 /dev/sda4
```
## mount partitions
```bash
mount /dev/sda3 /mnt && mkdir /mnt/boot && mkdir /mnt/home && mount /dev/sda2 /mnt/boot/ && mount /dev/sda4 /mnt/home/
```
## install base
```bash
pacstrap /mnt base openssh zsh git dhcp grub sudo base-devel vim curl && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc && chsh -s /bin/zsh
```

## generate fstab and change root
```bash
genfstab -Up /mnt >> /mnt/etc/fstab && arch-chroot /mnt
```
## locales and hostname
```bash
echo base-arch > /etc/hostname && ln -sf /usr/share/zoneinfo/Europe/Sofia /etc/localtime
```
## install Desktop env
```bash
pacman -S xfce4 xfce4-goodies chromium xorg-server xf86-input-mouse xf86-input-keyboard xf86-video-vesa xorg-fonts-100dpi ttf-bitstream-vera freetype2 xorg-fonts-type1 alsa-utils xorg-xinit networkmanager networkmanager-openconnect networkmanager-openvpn networkmanager-pptp networkmanager-vpnc wget vi vim emacs mc lightdm lightdm-gtk-greeter
```
## Uncomment the needed locales in /etc/locale.gen, then generate them with:
```bash
locale-gen
```

## put in /etc/locale.conf
```bash
LANG=en_US.UTF-8
LC_COLLATE=C
LC_TIME=en_US.UTF-8
LC_MESSAGES=C
```
## set root password

## enable services
```bash
systemctl enable lightdm.service && systemctl enable sshd.service
```

## generate boot
```bash
mkinitcpio -p linux && grub-install --target=i386-pc --recheck --debug /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg
```

## after restart

### add some user
```bash
useradd -m -d /home/usr -G wheel -s /bin/zsh usr
```

## AUR install trizen from normal user

```bash
curl https://aur.archlinux.org/cgit/aur.git/snapshot/trizen.tar.gz --output trizen.tar.gz && tar -xvf trizen.tar.gz && cd trizen/ && makepkg -s

sudo pacman -U ./<package name>
```
