import 'package:flutter/material.dart';
import 'package:meb_stock_program/join.dart';
import 'package:meb_stock_program/tecbox.dart';

import 'home.dart';

class Login extends StatelessWidget {
  final TextEditingController tecNumber = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // 전체 Padding을 설정
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TecBox(tec: tecNumber, title: '사번 입력', hint: '사번을 입력하세요'),

            const SizedBox(height: 16.0),

            /// 버튼 구현
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Join()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey, // 버튼 배경색 지정
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('회원가입', style: TextStyle(color: Colors.white)),
                  ),
                ),

                SizedBox(
                  width: 10,
                ),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey, // 버튼 배경색 지정
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('로그인', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8.0), // 두 번째 버튼과 간격 추가
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // 버튼 배경색 지정
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('관리자 계정', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
