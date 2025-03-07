import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("AgamYogi (2211102281)")),
        body: const Center(
          child: Row(
            children: <Widget>[
              FlutterLogo(),
              Expanded(
                child: Text(
                  "Flutter's hot reload helps you quickly and easily experiment, build UIs, add "
                  "features, and fix bugs faster. Experience sub-second reload times, without losing state, on "
                  "emulators, simulators, and hardware for iOS and Android.",
                ),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ),
      ),
    );
  }
}
