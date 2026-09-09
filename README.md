# FASTA Social v10

FASTA adalah aplikasi sosial satu basis kode untuk Android/iOS dengan login, feed video/foto, upload media ke Firebase Storage, like, profil, dan struktur chat realtime Firestore.

## Firebase yang sudah dikonfigurasi
- Project: `fasta-feb35`
- Android package: `com.fasta.social`
- iOS Bundle ID: `com.fasta.social`
- Android: `android/app/google-services.json`
- iOS: `ios/Runner/GoogleService-Info.plist`
- Flutter Firebase options: `lib/firebase_options.dart`

## Yang harus diaktifkan di Firebase Console
1. Authentication → Sign-in method → Email/Password → Enable.
2. Firestore Database → Create database.
3. Storage → Get started.
4. Publish `firebase/firestore.rules` dan `firebase/storage.rules`.

Jika Firebase CLI tersedia:
```bash
firebase login
firebase use fasta-feb35
firebase deploy --only firestore:rules,storage
```

## Menjalankan aplikasi
Di komputer yang sudah terpasang Flutter:
```bash
flutter pub get
flutter create .
flutter run
```

Karena `flutter create .` dapat menambahkan/mengatur ulang folder platform, setelah menjalankannya pastikan kembali:
- Android applicationId = `com.fasta.social`
- `android/app/google-services.json` tetap ada.
- `ios/Runner/GoogleService-Info.plist` tetap ada.

Untuk Android:
```bash
flutter build apk --release
flutter build appbundle --release
```

Untuk iOS diperlukan macOS + Xcode + Apple Developer account:
```bash
flutter build ipa
```

## Fitur yang sudah bekerja setelah Firebase diaktifkan
- Registrasi/login email + password
- Profil pengguna dasar
- Feed realtime dari Firestore
- Upload foto/video ke Firebase Storage
- Posting caption
- Like realtime
- Struktur chat realtime Firestore
- Dark UI FASTA

## Catatan
Folder `android/` dan `ios/` di paket ini berisi konfigurasi Firebase, bukan seluruh generated Flutter platform project. Flutter SDK diperlukan untuk membuat scaffold platform dan melakukan build final.
