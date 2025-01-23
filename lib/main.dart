import 'package:final_assigment/screen_dx.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "MbtiDiagosis",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI診断をはじめる"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ScreenDx();
            }));
          },
          child: Text("スタート")),
      ),
    );
  }
}