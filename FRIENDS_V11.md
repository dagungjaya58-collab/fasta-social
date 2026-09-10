# FASTA v11 — Friends & Chat

Penambahan utama:
- Cari pengguna FASTA berdasarkan nama atau email.
- Kirim permintaan pertemanan.
- Terima/tolak permintaan pertemanan.
- Daftar teman tersimpan di Firestore.
- Tekan teman untuk langsung membuka chat.
- Chat pribadi realtime tetap menggunakan sistem chat FASTA sebelumnya.

Firestore collections:
- `users/{uid}`
- `users/{uid}/friends/{friendUid}`
- `friendRequests/{requestId}`
- `chats/{chatId}/messages/{messageId}`

Catatan: pengguna lama yang sudah ada tetap bisa dicari berdasarkan field `name`/`email`. Akun baru juga menyimpan `nameLower`.
