import 'package:flutter/material.dart';

class Hkmc extends StatefulWidget {
  const Hkmc({super.key});

  @override
  _HkmcState createState() => _HkmcState();
}

class _HkmcState extends State<Hkmc> {
  // 드롭다운 버튼을 위한 선택 변수
  String? selectedVersion = '버전0';
  String? selectedEsc = 'esc사양0';
  String? selectedMcu = 'mcu lva0';
  String? selectedEvp = 'evp0';
  String? selectedQuantity = '잔여수량0';
  String? selectedUsage = '용도0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HKMC'),
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
          },
          children: [
            // 표 제목 행
            TableRow(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              children: const [
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('버전'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('esc사양'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('mcu lva'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('evp'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('잔여수량'))),
                Center(child: Padding(padding: EdgeInsets.all(8.0), child: Text('용도'))),
              ],
            ),
            // 2행 드롭다운 버튼 행
            TableRow(
              children: [
                DropdownButton<String>(
                  value: selectedVersion,
                  isExpanded: true,
                  items: ['버전0', '버전1', '버전2', '버전3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedVersion = newValue;
                    });
                  },
                ),
                DropdownButton<String>(
                  value: selectedEsc,
                  isExpanded: true,
                  items: ['esc사양0', 'esc사양1', 'esc사양2', 'esc사양3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedEsc = newValue;
                    });
                  },
                ),
                DropdownButton<String>(
                  value: selectedMcu,
                  isExpanded: true,
                  items: ['mcu lva0', 'mcu lva1', 'mcu lva2', 'mcu lva3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedMcu = newValue;
                    });
                  },
                ),
                DropdownButton<String>(
                  value: selectedEvp,
                  isExpanded: true,
                  items: ['evp0', 'evp1', 'evp2', 'evp3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedEvp = newValue;
                    });
                  },
                ),
                DropdownButton<String>(
                  value: selectedQuantity,
                  isExpanded: true,
                  items: ['잔여수량0', '잔여수량1', '잔여수량2', '잔여수량3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedQuantity = newValue;
                    });
                  },
                ),
                DropdownButton<String>(
                  value: selectedUsage,
                  isExpanded: true,
                  items: ['용도0', '용도1', '용도2', '용도3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedUsage = newValue;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
