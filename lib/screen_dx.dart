import 'package:final_assigment/screen_con.dart';
import 'package:flutter/material.dart';

class ScreenDx extends StatefulWidget {
  const ScreenDx({super.key});

  @override
  State<ScreenDx> createState() => _ScreenDxState();
}

class _ScreenDxState extends State<ScreenDx> {
  List mbtiList = [["E", "I"], ["S", "N"], ["T", "F"], ["J", "P"]];
  List numberList = [0, 0, 0, 0];

  List questionList = [
    "エネルギーの回復法は...",
    "よく考えるのは...",
    "決定を下すときには...",
    "計画を立てるときは..."
  ];

  List optionList = [
    [
      "人と過ごすこと",
      "1人の時間を過ごすこと"
    ],
    [
      "今起こっていること",
      "これから先のこと"
    ],
    [
      "公平さや原則を重視する",
      "調和や共感を重視する"
    ],
    [
      "スケジュールやリストを作成して管理する",
      "状況に応じて柔軟に対応する"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI診断テスト"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              block(0),
              block(1),
              block(2),
              block(3),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ScreenCon(
                      con_0: mbtiList[0][numberList[0]],
                      con_1: mbtiList[1][numberList[1]],
                      con_2: mbtiList[2][numberList[2]],
                      con_3: mbtiList[3][numberList[3]],
                    );
                  }));
                },
                child: Text("結果をみる"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget block(int num) {
    return Column(
      children: [
        Text(questionList[num]),
        Padding(padding: EdgeInsets.all(10)),
        Row(
          children: [
            counterButton(num, 0, 1), // 引数にblockのインデックスとbuttonの番号を渡す
            Text(optionList[num][0]),
          ],
        ),
        Padding(padding: EdgeInsets.all(5)),
        Row(
          children: [
            counterButton(num, 1, 2),
            Text(optionList[num][1]),
          ],
        ),
        Padding(padding: EdgeInsets.all(30)),
      ],
    );
  }

  
  Widget counterButton(int num, int index, int i) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          numberList[num] = i - 1; 
        });
        print("numberList[${num}] = ${numberList[num]}");
      },
      child: Text("$i"),
    );
  }
}
