import 'package:flutter/material.dart';
import 'package:oncard_saku/features/home/home_page.dart';
import 'package:oncard_saku/features/tagihan/tagihan_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    '/tagihan': (context) => const TagihanPage(),
  };
}
