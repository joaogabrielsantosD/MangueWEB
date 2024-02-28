import 'package:flutter/material.dart';
import 'package:mangueweb/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'live':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case 'backup':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()); // return to init screen
    }
  }
}
