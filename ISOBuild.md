Contoh skrip Bash untuk membuat ISO baru dari Kali Linux yang telah Anda modifikasi:

```bash
#!/bin/bash

# Tentukan direktori kerja
WORK_DIR="/path/to/your/custom/kali"

# Tentukan nama berkas ISO yang dihasilkan
ISO_NAME="custom_kali.iso"

# Buat direktori sementara untuk menyimpan isi ISO
mkdir -p $WORK_DIR/livecdtmp

# Salin isi Kali Linux yang telah Anda modifikasi ke direktori sementara
cp -r $WORK_DIR/* $WORK_DIR/livecdtmp

# Buat berkas ISO dari direktori sementara
genisoimage -o $WORK_DIR/$ISO_NAME -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -J -R -V "Custom Kali Linux" $WORK_DIR/livecdtmp

# Hapus direktori sementara
rm -rf $WORK_DIR/livecdtmp

echo "ISO baru telah berhasil dibuat: $ISO_NAME"
```

Pastikan untuk mengganti `/path/to/your/custom/kali` dengan direktori tempat Kali Linux yang telah Anda modifikasi berada. Anda juga dapat menyesuaikan `ISO_NAME` sesuai keinginan Anda. Setelah Anda menyimpan skrip di atas dengan nama misalnya `create_custom_iso.sh`, jalankan skrip tersebut di terminal dengan perintah `bash create_custom_iso.sh`. Ini akan membuat ISO baru dari Kali Linux yang telah Anda modifikasi.

