import 'package:final_assigment/screen_con.dart';
import 'package:flutter/material.dart';

class ScreenDx extends StatefulWidget {
  const ScreenDx({super.key});

  @override
  State<ScreenDx> createState() => _ScreenDxState();
}

class _ScreenDxState extends State<ScreenDx> {
  var list_a = ["E", "I"];
  var list_b = ["S", "N"];
  var list_c = ["T", "F"];
  var list_d = ["J", "P"];

  int num_a = 0;
  int num_b = 0;
  int num_c = 0;
  int num_d = 0;

  String question_1 = "エネルギーの回復法は...";
  String question_2 = "よく考えるのは...";
  String question_3 = "決定を下すときには...";
  String question_4 = "計画を立てるときは...";

  String option_11 = "人と過ごすこと";
  String option_12 = "1人の時間を過ごすこと";
  String option_21 = "今起こっていること";
  String option_22 = "これから先のこと";
  String option_31 = "公平さや原則を重視する";
  String option_32 = "調和や共感を重視する";
  String option_41 = "スケジュールやリストを作成して管理する";
  String option_42 = "状況に応じて柔軟に対応する";

  


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
              block(question_1, option_11, option_12, num_a),
              block(question_2, option_21, option_22, num_b),
              block(question_3, option_31, option_32, num_c),
              block(question_4, option_41, option_42, num_d),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ScreenCon(
                      con_a: list_a[num_a], 
                      con_b: list_b[num_b], 
                      con_c: list_c[num_c],
                      con_d: list_d[num_d],
                      );
                  }));
                }, 
                child: Text("結果をみる")),
            ],
            
          ),
        ),
      ),
    );
  }

  Widget block(String question, String option1, String option2, int num){
    return Column(
      children: [
        Text(question),
        Padding(padding: EdgeInsets.all(10)),
        Row(
          children: [
            counterButton(num, 1),
            Text(option1),
          ],
        ),
        Padding(padding: EdgeInsets.all(5)),
        Row(
          children: [
            counterButton(num, 2),
            Text(option2),
          ],
        ),
        Padding(padding: EdgeInsets.all(30)),
      ],
    );
  }

  Widget counterButton(int num, int i) {
    return ElevatedButton(
      onPressed: (){
        setState(() {
          num = num + (i-1);
        });
      }, 
      child: Text("$i"),
      );
  }
}