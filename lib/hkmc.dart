import 'package:flutter/material.dart';

class Hkmc extends StatefulWidget {
  const Hkmc({super.key});

  @override
  _HkmcState createState() => _HkmcState();
}

class _HkmcState extends State<Hkmc> {
  // 드롭다운 버튼을 위한 선택 변수 리스트
  List<Map<String, String?>> dropdownValues = [
    {
      'version': '버전0',
      'productName': '제품명0',
      'spec1': 'spec1-0',
      'spec2': 'spec2-0',
      'spec3': 'spec3-0',
      'quantity': '신청수량0',
      'usage': '용도0',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HKMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 표
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
                6: FlexColumnWidth(),
              },
              children: [
                // 표 제목 행
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  children: const [
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('제품명'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec1'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec2'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('spec3'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('신청수량'))),
                    Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('용도'))),
                  ],
                ),
                // 드롭다운 버튼 행 생성
                ...dropdownValues.map((dropdownValue) {
                  return TableRow(
                    children: [
                      _buildDropdown(
                        value: dropdownValue['version'],
                        items: ['버전0', '버전1', '버전2', '버전3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['version'] = newValue;
                          });
                        },
                      ),
                      _buildDropdown(
                        value: dropdownValue['productName'],
                        items: ['제품명0', '제품명1', '제품명2', '제품명3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['productName'] = newValue;
                          });
                        },
                      ),
                      _buildDropdown(
                        value: dropdownValue['spec1'],
                        items: ['spec1-0', 'spec1-1', 'spec1-2', 'spec1-3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['spec1'] = newValue;
                          });
                        },
                      ),
                      _buildDropdown(
                        value: dropdownValue['spec2'],
                        items: ['spec2-0', 'spec2-1', 'spec2-2', 'spec2-3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['spec2'] = newValue;
                          });
                        },
                      ),
                      _buildDropdown(
                        value: dropdownValue['spec3'],
                        items: ['spec3-0', 'spec3-1', 'spec3-2', 'spec3-3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['spec3'] = newValue;
                          });
                        },
                      ),
                      _buildDropdown(
                        value: dropdownValue['quantity'],
                        items: ['신청수량0', '신청수량1', '신청수량2', '신청수량3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['quantity'] = newValue;
                          });
                        },
                      ),
                      _buildDropdown(
                        value: dropdownValue['usage'],
                        items: ['용도0', '용도1', '용도2', '용도3'],
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue['usage'] = newValue;
                          });
                        },
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
            const SizedBox(height: 16.0), // 버튼과 표 간의 간격 추가
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // 새 행 추가
                  dropdownValues.add({
                    'version': '버전0',
                    'productName': '제품명0',
                    'spec1': 'spec1-0',
                    'spec2': 'spec2-0',
                    'spec3': 'spec3-0',
                    'quantity': '신청수량0',
                    'usage': '용도0',
                  });
                });
              },
              child: const Text('+ 행 추가'),
            ),
            const SizedBox(height: 16.0), // 신청하기 버튼과 간격 추가
            ElevatedButton(
              onPressed: () {
                // 다이얼로그 띄우기
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: const Text('샘플 신청이 완료되었습니다.'),
                    );
                  },
                );

                // 2초 후에 다이얼로그 자동으로 닫기
                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.of(context).pop(); // 다이얼로그 닫기
                });
              },
              child: const Text('신청하기'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return DropdownButton<String>(
      value: value,
      isExpanded: true,
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Center(child: Text(item)),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
