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
        theme: ThemeData.dark(useMaterial3: true),
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
                Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Balance"),
                      SizedBox(height: 10),
                      Text("0")
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700],
                          minimumSize: Size(double.infinity, 0)),
                      onPressed: addFunction,
                      child: Text("Click here")),
                )
              ],
            ),
          ),
        ));
  }
}
