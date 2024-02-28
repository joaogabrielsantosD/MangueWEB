import 'package:flutter/material.dart';
import 'package:mangueweb/screens/backup_screen.dart';
import 'package:mangueweb/screens/home_screen.dart';
import 'package:mangueweb/screens/live_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'live':
        return MaterialPageRoute(builder: (_) => const LiveScreen());
      case 'backup':
        return MaterialPageRoute(builder: (_) => const BackupScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()); // return to init screen
    }
  }
}
