import 'package:flutter/material.dart';

class ScreenCon extends StatelessWidget {
  final String con_0;
  final String con_1;
  final String con_2;
  final String con_3;

  const ScreenCon({
    super.key,
    required this.con_0,
    required this.con_1,
    required this.con_2,
    required this.con_3,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("あなたの結果"),
      ),
      body: Center(
        child: Text("あなたのMBTIは [$con_0$con_1$con_2$con_3] です。"),
      ),
    );
  }
}