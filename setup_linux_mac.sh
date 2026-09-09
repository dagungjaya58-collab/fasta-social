#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
command -v flutter >/dev/null || { echo "Flutter SDK belum ditemukan."; exit 1; }
flutter create . --org com.fasta
flutter pub get
echo "Selesai. Jalankan: flutter run"
