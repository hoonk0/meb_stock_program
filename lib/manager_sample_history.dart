import 'package:flutter/material.dart';

class ManagerSampleHistory extends StatelessWidget {
  const ManagerSampleHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('관리자 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(
            color: Colors.grey, // 테두리 색상
            width: 2.0, // 테두리 두께
          ),
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
            3: FlexColumnWidth(),
            4: FlexColumnWidth(),
            5: FlexColumnWidth(),
            6: FlexColumnWidth(),
          },
          children: [
            // 표 제목 행
            TableRow(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              children: const [
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('신청날짜'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('신청자'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('신청팀'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('샘플사양'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('신청수량'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('용도'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('기한'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('재고상황'))),
              ],
            ),
            // 예시 데이터 행
            TableRow(
              children: [
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-01'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('홍길동'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('개발팀'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('샘플 A'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('10개'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('테스트'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-15'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('30개'))),
              ],
            ),
            TableRow(
              children: [
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-02'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('김철수'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('디자인팀'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('샘플 B'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('5개'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('프로토타입'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-20'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('30개'))),
              ],
            ),
            TableRow(
              children: [
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-03'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('이영희'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('영업팀'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('샘플 C'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('20개'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('고객 시연'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('2024-10-25'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('15개'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
