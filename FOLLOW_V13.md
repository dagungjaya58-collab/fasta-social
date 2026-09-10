# FASTA V13 — Followers & Following

Fitur tahap 1:
- Ikuti / berhenti mengikuti pengguna.
- Statistik Followers dan Following.
- Daftar Followers & Following.
- Profil publik pengguna.
- Pencarian pengguna dari Explore dan Cari Orang dengan tombol Ikuti.

Data disimpan di Firestore:
- users/{uid}/followers/{followerUid}
- users/{uid}/following/{followingUid}

Catatan: notifikasi follow belum ditambahkan pada versi ini; akan dikerjakan pada tahap berikutnya.
