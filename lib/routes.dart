import 'package:flutter/material.dart';
import 'package:mangueweb/screens/graph_screen.dart';

import 'package:mangueweb/screens/home_screen.dart';
import 'package:mangueweb/screens/live_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'graph':
        return MaterialPageRoute(builder: (_) => const GraphScreen());
      case 'live':
        return MaterialPageRoute(builder: (_) => const LiveScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
