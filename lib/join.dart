import 'package:flutter/material.dart';
import 'package:meb_stock_program/tecbox.dart';

import 'main.dart';

class Join extends StatelessWidget {
  final TextEditingController tecNumber = TextEditingController();
  final TextEditingController tecName = TextEditingController();
  final TextEditingController tecTeam = TextEditingController();

  Join({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            TecBox(tec: tecNumber, title: '사번 입력', hint: '사번을 입력해주세요.'),
            TecBox(tec: tecName, title: '이름 입력', hint: '이름을 입력해주세요.'),
            TecBox(tec: tecTeam, title: '팀 입력', hint: '팀을 입력해주세요.'),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){Navigator.of(context).pop();},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey, // 버튼 배경색 지정
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: Text('가입완료',style: TextStyle(color: Colors.white),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
