import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void addFunction() {
    print("Button is clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Billionaire App"),
          ),
          body: Container(
            padding: EdgeInsets.all(25),
            color: Colors.blueGrey[700],
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance"),
                ElevatedButton(
                    onPressed: addFunction, child: Text("Click here"))
              ],
            ),
          ),
        ));
  }
}
