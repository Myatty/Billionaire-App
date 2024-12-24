import 'package:flutter/material.dart';

class BalanceView extends StatelessWidget {

  double balance;
  BalanceView({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('My Balance', style: TextStyle(fontSize: 32)),
          SizedBox(height: 10),
          Text(
            '\$$balance',
            style: TextStyle(fontSize: 25, color: Color(0xFFFFD700)),
          ),
        ],
      ),
    );
  }
}
