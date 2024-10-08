import 'package:flutter/material.dart';
import 'package:meb_stock_program/manager_sample_history.dart';
import 'package:meb_stock_program/sample_history.dart';

import 'hkmc.dart';
import 'manager_stock.dart';

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
                color: Colors.grey,
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
            ExpansionTile(
              title: const Text('관리자 페이지'),
              children: [
                ListTile(
                  title: const Text('재고입력'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ManagerStock()));
                  },
                ),
                ListTile(
                  title: const Text('샘플 신청 현황'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ManagerSampleHistory()));
                  },
                ),
              ],
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
              const Text('홍길동_팀 이름 님의'),
              const Text('샘플 요청 현황은 아래와 같습니다'),
              SizedBox(
                height: 50,
              ),

              // 표 추가
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
                child: Column(
                  children: [
                    // 표 제목 행
                    Table(
                      border: TableBorder.all(
                        color: Colors.grey, // 테두리 색상
                        width: 2.0, // 테두리 두께
                      ),
                      children: [
                        TableRow(
                          decoration: BoxDecoration(color: Colors.grey.shade200),
                          children: const [
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('날짜'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('사양'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec1'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec2'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec3'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('신청수량'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('수령여부'))),
                          ],
                        ),
                        // 예시 데이터 행 추가
                        TableRow(
                          children: [
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-08'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전1'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('사양1'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('A'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('B'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('C'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('20'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('X'))),
                          ],
                        ),

                        TableRow(
                          children: [
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-08'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전1'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('사양2'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('C'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('X'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('A'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('60'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('O'))),
                          ],
                        ),

                        TableRow(
                          children: [
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-08'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전1'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('사양1'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('A'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('A'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('V'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('60'))),
                            Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('X'))),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
