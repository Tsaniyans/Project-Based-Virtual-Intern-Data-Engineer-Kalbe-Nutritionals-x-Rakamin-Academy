#!/bin/bash

# Variabel
path="C:/Users/62895/data1"
name_of_directory="data1"

# Periksa apakah direktori sudah ada
if [ -d "$path/$name_of_directory" ]; then
    echo "Direktori $name_of_directory Sudah Ada!"
else
    echo "Direktori $name_of_directory Belum Ada!"
    # Buat direktori
    mkdir "$path/$name_of_directory"
    echo "Direktori $name_of_directory dibuat di dalam $path."
fi

# Variabel Tambahan
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"

# Salin file dari direktori sumber ke direktori tujuan
cp "$source_dir/$filename_excel" "$target_dir/$filename_excel"

# Periksa apakah penyalinan berhasil
if [ $? -eq 0 ]; then
    echo "File $filename_excel berhasil dipindahkan ke $target_dir."
    # Buat file log dengan konten "File Berhasil Dipindahkan"
    log_file="$target_dir/log.txt"
    echo "File Berhasil Dipindahkan" > "$log_file"
    echo "File log dibuat: $log_file"
else
    echo "Gagal memindahkan file $filename_excel ke $target_dir."
fi
