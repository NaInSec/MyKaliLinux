#!/bin/bash
# Script Resmastering GNU/Linux - Code By XXSec101

# Nama distribusi Linux yang ingin diremaster
DISTRO_NAME="MyLinux"

# Jalur direktori kerja
WORK_DIR="/home/linux/source-linux/"

# Jalur direktori asli distribusi Linux
ORIGINAL_DIR="/path/to/original/linux/distribution"

# Buat direktori kerja
mkdir -p "$WORK_DIR/iso"
mkdir -p "$WORK_DIR/extraction"

# Ekstrak isi ISO asli
sudo mount -o loop "$ORIGINAL_DIR/original.iso" "$WORK_DIR/extraction"
rsync -av "$WORK_DIR/extraction/" "$WORK_DIR/iso/"
sudo umount "$WORK_DIR/extraction"

# Modifikasi isi distribusi (opsional)
# Contoh: Tambahkan atau ubah berkas konfigurasi, perangkat lunak, dll.

# Rebuild ISO
cd "$WORK_DIR/iso"
sudo mkisofs -r -o "$WORK_DIR/$DISTRO_NAME.iso" .
