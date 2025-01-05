import 'package:flutter/material.dart';
import 'package:oncard_saku/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Rute awal aplikasi
      routes: AppRoutes.routes, // Menyambungkan routes dari app_route.dart
    );
  }
}
