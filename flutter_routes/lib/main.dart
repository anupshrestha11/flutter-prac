import 'package:flutter/material.dart';
import 'package:flutter_routes/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "First Page",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: Text("Go to second page"),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed("/second", arguments: "Second Page");
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/third");
                },
                child: Text("Go to third"))
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Third Page",
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
