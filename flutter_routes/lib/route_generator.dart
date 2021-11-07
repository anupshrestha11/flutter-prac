import 'package:flutter/material.dart';
import 'package:flutter_routes/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => FirstPage());
      case "/second":
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(title: args));
        }
        return _errorRoute();
      case "/third":
        return MaterialPageRoute(builder: (_) => ThirdPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Text("ERROR"),
      );
    });
  }
}
