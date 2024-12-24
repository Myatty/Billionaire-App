import 'package:flutter/material.dart';

class AddMoneyButton extends StatelessWidget {
  void Function() addMoneyFunction;
  AddMoneyButton({super.key, required this.addMoneyFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF121212),
              minimumSize: Size(double.infinity, 0)),
          onPressed: addMoneyFunction,
          child: Text(
            'Click here',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }
}
