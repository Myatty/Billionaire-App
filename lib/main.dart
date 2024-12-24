import 'package:billionaireapp/add_money_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;

  void addMoney() async {
    setState(() {
      balance += 500;
    });

    // Obtain shared preferences
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setDouble('balance', balance);
  }

  @override
  void initState() {
    loadBalance();
    super.initState();
  }

  void loadBalance() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      balance = pref.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Billionaire App',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color(0xFF121212),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(25),
            color: Color(0xFF222222),
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
                      Text('My Balance', style: TextStyle(fontSize: 32)),
                      SizedBox(height: 10),
                      Text(
                        '\$$balance',
                        style:
                            TextStyle(fontSize: 25, color: Color(0xFFFFD700)),
                      ),
                    ],
                  ),
                ),
                AddMoneyButton(addMoneyFunction: addMoney),
              ],
            ),
          ),
        ));
  }
}
