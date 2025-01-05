# oncard_saku

## Instalasi

<p>
java -version
</p>

<p>
openjdk version "17.0.13" 2024-10-15
OpenJDK Runtime Environment Temurin-17.0.13+11 (build 17.0.13+11)
OpenJDK 64-Bit Server VM Temurin-17.0.13+11 (build 17.0.13+11, mixed mode, sharing)
</p>

<p>
flutter --version
</p>

<p>
Flutter 3.27.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 17025dd882 (2 weeks ago) • 2024-12-17 03:23:09 +0900
Engine • revision cb4b5fff73
Tools • Dart 3.6.0 • DevTools 2.40.2
</p>


<p>
flutter create oncard_saku 
</p>


## JDK
<p>
flutter config --jdk-dir=/Library/Java/JavaVirtualMachines/temurin-17.0.13/Contents/Home
</p>


## Build
flutter build apk --debug

# Struktur Project

lib/
├── main.dart              // Entry point aplikasi Flutter
├── routes/
│   ├── app_routes.dart    // Definisi rute untuk navigasi
├── features/
│   ├── home/
│   │   ├── home_page.dart // Widget halaman utama (Page Level)
│   │   ├── screens/
│   │   │   ├── home_screen.dart // Tampilan utama dalam halaman home (Screen Level)
└── ├── auth/           


## Buat Folder dan File otomatis di Mac
mkdir -p lib/features/home/screens lib/features/home/widgets lib/routes 

touch lib/main.dart \
routes/app_routes.dart \
lib/features/home/home_page.dart \
lib/features/home/screens/home_screen.dart



# Shimmer
  shimmer: ^2.0.0





A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
