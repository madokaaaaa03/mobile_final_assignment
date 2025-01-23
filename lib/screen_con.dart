import 'package:flutter/material.dart';

class ScreenCon extends StatelessWidget {
  final String con_a;
  final String con_b;
  final String con_c;
  final String con_d;

  const ScreenCon({
    super.key,
    required this.con_a,
    required this.con_b,
    required this.con_c,
    required this.con_d,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("あなたの結果"),
      ),
      body: Center(
        child: Text("あなたのMBTIは [$con_a$con_b$con_c$con_d] です。"),
      ),
    );
  }
}