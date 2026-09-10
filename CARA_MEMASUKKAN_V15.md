# CARA MEMASUKKAN FASTA V15 KE GITHUB + BUILD APK

1. Download `fasta_social_v15_final.zip`.
2. Buka repository GitHub FASTA Anda.
3. Hapus source FASTA lama di repository, atau buat branch baru `v15-final`.
4. Upload dan extract isi ZIP sehingga `pubspec.yaml`, `lib/`, `firebase/`, `android/`, dll berada di root repository.
5. Pastikan `google-services.json` yang sudah Anda gunakan sebelumnya tetap berada di `android/app/google-services.json` jika workflow Anda membutuhkannya. Jangan membuat konfigurasi Firebase baru jika project FASTA yang sama masih dipakai.
6. Pastikan package Android tetap `com.fasta.social`.
7. Commit perubahan.
8. Buka Actions -> workflow build APK -> Run workflow.
9. Tunggu sampai status hijau.
10. Download artifact APK -> install di HP.

## Firebase Console
Project yang dipakai: `fasta-feb35`.
Pastikan Authentication -> Sign-in method -> Email/Password = Enabled.
Firestore Database harus aktif.
Storage harus aktif.

### Rules
Salin:
- `firebase/firestore.rules` ke Firebase Console -> Firestore Database -> Rules.
- `firebase/storage.rules` ke Firebase Console -> Storage -> Rules.
Klik Publish.

### Jika muncul error index
Beberapa query pada aplikasi sengaja dibuat sederhana agar tidak memerlukan composite index sebanyak versi lama. Jika Firebase memberi link `Create index`, buka link tersebut dan buat index yang diminta.

### Penting
Jangan menghapus project Firebase lama karena aplikasi V12 sudah terhubung ke project tersebut. File `firebase_options.dart` dan konfigurasi Google Services harus tetap satu project.
