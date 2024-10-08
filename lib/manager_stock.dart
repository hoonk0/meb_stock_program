import 'package:flutter/material.dart';

class ManagerStock extends StatefulWidget {
  const ManagerStock({super.key});

  @override
  _ManagerStockState createState() => _ManagerStockState();
}

class _ManagerStockState extends State<ManagerStock> {
  // 데이터 리스트
  List<List<String>> _data = [
    ['버전0', '사양0', 'a', 'b', 'a', '30ea'],
  ];

  void _addRow() {
    setState(() {
      // 새로운 행 추가
      _data.add(['', '', '', '', '', '']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('관리자 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _addRow,
              child: const Text('+ 행 추가'),
            ),
            const SizedBox(height: 16.0), // 버튼과 표 간의 간격
            Table(
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
              },
              children: [
                // 표 제목 행
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  children: const [
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('사양'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec1'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec2'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec3'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('재고량'))),
                  ],
                ),

                // 데이터 행 추가
                for (var row in _data)
                  TableRow(
                    children: row.map((cell) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cell),
                        ),
                      );
                    }).toList(),
                  ),
                for (var row in _data)
                  TableRow(
                    children: row.map((cell) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cell),
                        ),
                      );
                    }).toList(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
