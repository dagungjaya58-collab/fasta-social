@echo off
setlocal
cd /d %~dp0
where flutter >nul 2>nul
if errorlevel 1 (
  echo Flutter SDK belum ditemukan. Install Flutter terlebih dahulu.
  exit /b 1
)
if not exist pubspec.yaml (
  echo Jalankan script dari folder FASTA Social.
  exit /b 1
)
echo [1/3] Membuat platform Android/iOS...
flutter create . --org com.fasta
if errorlevel 1 exit /b 1
if exist android\app\google-services.json copy /Y android\app\google-services.json android\app\google-services.json >nul
if exist ios\Runner\GoogleService-Info.plist copy /Y ios\Runner\GoogleService-Info.plist ios\Runner\GoogleService-Info.plist >nul
echo [2/3] Mengambil dependency...
flutter pub get
if errorlevel 1 exit /b 1
echo [3/3] Selesai. Jalankan: flutter run
endlocal
