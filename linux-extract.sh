#!/bin/bash
# Code By XXSec101

# Jalur ke file ISO distribusi Linux
ISO_FILE="/home/Downloads/linux-distribution.iso"

# Jalur direktori tempat untuk mengekstrak isi ISO
EXTRACTION_DIR="/home/Linux-Distribution/"

# Buat direktori tempat untuk mengekstrak isi ISO
mkdir -p "$EXTRACTION_DIR"

# Mount ISO ke direktori ekstraksi
sudo mount -o loop "$ISO_FILE" "$EXTRACTION_DIR"

# Tampilkan isi ISO
ls "$EXTRACTION_DIR"

# Anda dapat menambahkan langkah-langkah lain di sini, misalnya:
# - Menyalin file atau folder dari ISO ke direktori lain
# - Memodifikasi atau mengedit berkas dalam ISO
# Misalnya, Anda ingin mengedit file konfigurasi di direktori "etc":
# sudo nano "$EXTRACTION_DIR/etc/myconfig.conf"

# Unmount ISO setelah selesai editing
sudo umount "$EXTRACTION_DIR"

# Baca kembali isi direktori ekstraksi untuk memastikan perubahan telah disimpan
ls "$EXTRACTION_DIR"

# Rebuild ISO
cd "$EXTRACTION_DIR"
sudo mkisofs -r -o "/home/new-linux-distribution.iso" .

# Hapus direktori ekstraksi jika tidak diperlukan lagi
# rm -rf "$EXTRACTION_DIR"

