# FASTA Social — Firebase/Android fixed build

This package is prepared for the Firebase project `fasta-feb35` and Android application ID `com.fasta.social`.

## Required Firebase Console setup

Before testing registration:

1. Firebase Console → Authentication → Sign-in method → Email/Password → Enable.
2. Create/enable Cloud Firestore.
3. Create/enable Cloud Storage.
4. Deploy `firebase/firestore.rules` and `firebase/storage.rules` to project `fasta-feb35`.

## GitHub Actions

`.github/workflows/build-apk.yml` generates the Android platform only if it is absent, forces `applicationId` to `com.fasta.social`, validates `google-services.json`, installs the Google Services Gradle plugin, runs `flutter analyze`, and builds the release APK.

Do not run `flutter create --platforms=android --org com.fasta .` manually after the Android platform has been generated, because doing so can overwrite Android configuration.
