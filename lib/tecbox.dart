import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TecBox extends StatelessWidget {
  final TextEditingController tec; // 외부에서 받는 TextEditingController
  final String title;
  final String hint;

  TecBox({
    required this.tec, // 생성자 매개변수로 받기
    required this.title,
    required this.hint,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
      children: [
        Text(title),
        const SizedBox(height: 8.0), // 입력 필드와 텍스트 간의 간격 추가
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // 컨테이너 테두리 설정
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextField(
            controller: tec, // 외부에서 받은 tec 연결
            decoration: InputDecoration(
              border: InputBorder.none, // 내부 텍스트 필드의 기본 테두리 제거
              hintText: hint, // 힌트 텍스트 추가
            ),
          ),
        ),
      ],
    );
  }
}
