import 'package:flutter/material.dart';z
// import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _loginForm = GlobalKey<FormState>();
  String username = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Row(children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: "Navigation Menu",
          ),
          Expanded(child: Text("Login Page")),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: null,
            tooltip: "Navigation Menu",
          )
        ])),
        body: Form(
          key: _loginForm,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username.";
                  } else if (value.length < 4) {
                    return "Enter atleast 4 characters.";
                  } else
                    return null;
                },
                onChanged: (value) => setState(() => username = value),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    focusColor: Colors.amber),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Enter atleast 6 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () => {print(_loginForm)},
              ),
              const SizedBox(height: 15),
              Text(
                "Or, Don\'t have an account?",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                child: Text("Register"),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
