#!/bin/bash

# Skrip Remastering Kali Linux

# Memeriksa apakah skrip dijalankan sebagai root
if [ "$(id -u)" -ne 0 ]; then
    echo "Skrip ini harus dijalankan sebagai root"
    exit 1
fi

# Memeriksa apakah squashfs-tools sudah terinstal
if ! dpkg -l | grep -q "squashfs-tools"; then
    echo "Instal squashfs-tools terlebih dahulu"
    exit 1
fi

# Memeriksa apakah direktori remaster ada
if [ ! -d "/mnt/remaster" ]; then
    echo "Buat direktori /mnt/remaster terlebih dahulu"
    exit 1
fi

# Menggabungkan sistem file Kali Linux ke dalam satu file
echo "Menggabungkan sistem file Kali Linux..."
mksquashfs / /mnt/remaster/kali-linux.img -comp xz -e boot

# Menghapus file ISO Kali Linux yang lama
rm -f kali-linux-remastered.iso

# Membuat file ISO baru dari sistem file yang sudah digabungkan
echo "Membuat ISO baru..."
mkisofs -r -J -o kali-linux-remastered.iso /mnt/remaster

echo "Remastering selesai. ISO baru tersedia: kali-linux-remastered.iso"

