#!/bin/bash

# Variabel
path=C:/Users/62895/data1
name_of_directory=data1
dir=$path/$name_of_directory
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market

if [ -d $dir ]; then
    echo "Direktori $name_of_directory Sudah Ada!"
     cp $source_dir/$filename_excel $path
     echo "File Pindah Berhasil"
else
    echo "Direktori $name_of_directory Belum Ada!"
    mkdir $dir
    exit 1
fi
