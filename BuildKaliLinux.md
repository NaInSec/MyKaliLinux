Contoh skrip Bash untuk membuat ISO Kali Linux dari direktori yang berisi semua modifikasi Anda:

```bash
#!/bin/bash

# Nama folder sumber
SOURCE_DIR="/path/to/your/source/directory"

# Nama file ISO yang akan dihasilkan
ISO_NAME="custom_kali.iso"

# Buat direktori sementara untuk proses remastering
TEMP_DIR=$(mktemp -d)

# Copy isi direktori sumber ke direktori sementara
cp -r "$SOURCE_DIR"/* "$TEMP_DIR"

# Lakukan pengaturan tambahan jika diperlukan
# Misalnya: konfigurasi tambahan, penyesuaian pengguna, dll.

# Buat file ISO dari direktori sementara
mkisofs -o "$ISO_NAME" "$TEMP_DIR"

# Hapus direktori sementara setelah selesai
rm -rf "$TEMP_DIR"

echo "Remastering selesai. ISO tersedia di: $ISO_NAME"
```

Pastikan untuk mengganti `/path/to/your/source/directory` dengan lokasi direktori sumber Anda yang berisi semua modifikasi Kali Linux. Anda juga dapat menyesuaikan variabel lain sesuai kebutuhan Anda.

Simpan skrip di dalam file bash (misalnya, `remaster_kali.sh`), kemudian berikan izin eksekusi dengan perintah `chmod +x remaster_kali.sh`. Setelah itu, Anda dapat menjalankan skrip dengan perintah `./remaster_kali.sh` untuk memulai proses remastering dan pembuatan ISO.

