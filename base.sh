#! /bin/sh
pacstrap /mnt base linux linux-firmware neofetch grub efibootmgr

genfstab -U /mnt >> /mnt/etc/fstab

ln -sf /mnt/usr/share/zoneinfo/America/Vancouver /mnt/etc/localtime

echo "en_US.UTF-8 UTF_8" >> /mnt/etc/locale.gen 
echo LANG=en_US.UTF-8 >> /mnt/etc/locale.conf