#!/bin/bash
# Code By XXSec101

# Jalur ke direktori yang berisi isi yang akan dibangun menjadi ISO
SOURCE_DIR="/path/to/source/directory"

# Nama berkas ISO yang akan dihasilkan
OUTPUT_ISO="new-linux-distribution.iso"

# Buat ISO dari direktori sumber
sudo mkisofs -r -o "$OUTPUT_ISO" "$SOURCE_DIR"
