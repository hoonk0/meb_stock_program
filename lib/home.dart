import 'package:flutter/material.dart';
import 'package:meb_stock_program/sample_history.dart';

import 'hkmc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                '메뉴',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ExpansionTile(
              title: const Text('ECU'),
              children: [
                ListTile(
                  title: const Text('HKMC'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Hkmc()));
                  },
                ),
                ListTile(
                  title: const Text('STLA'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('MMC'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('ETC'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('HU'),
              children: [
                ListTile(
                  title: const Text('Text4'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Text5'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Text6'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Text7'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Text8'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('공지사항'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('홍길동_팀 이름'),
              const Text('샘플 요청 현황은 아래와 같습니다'),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SampleHistory()));
                },
                child: Container(
                    color: Colors.transparent,
                    child: Text('샘플이력 상세보기')),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(16.0), // 컨테이너 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey, // 테두리 색상
                    width: 2.0, // 테두리 두께
                  ),
                ),
                child: const Text('현황 날짜 사양 수량 정리해서 나오게 표로 표시'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
