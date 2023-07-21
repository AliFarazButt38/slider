import 'package:flutter/material.dart';

class EmploymentStatus {
  final String title;
  bool isSelected;

  EmploymentStatus({required this.title, this.isSelected = false});
}

class StatusList2 extends StatefulWidget {
  @override
  _StatusList2State createState() => _StatusList2State();
}

class _StatusList2State extends State<StatusList2> {
  List<EmploymentStatus> employmentStatusList = [
    EmploymentStatus(title: 'Employed'),
    EmploymentStatus(title: 'Unemployed'),
    EmploymentStatus(title: 'Working'),
    EmploymentStatus(title: 'Not Working'),
  ];

  int selectedStatusIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employment Status List'),
      ),
      body: ListView.builder(
        itemCount: employmentStatusList.length,
        itemBuilder: (BuildContext context, int index) {
          EmploymentStatus status = employmentStatusList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                if (selectedStatusIndex != -1) {
                  employmentStatusList[selectedStatusIndex].isSelected = false;
                }
                status.isSelected = true;
                selectedStatusIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: status.isSelected ? Colors.blue : Colors.grey,
                  width: 2.0,
                ),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: status.isSelected ? Colors.blue : Colors.grey,
                        width: 2.0,
                      ),
                      color:  Colors.transparent,
                    ),
                    child: status.isSelected
                        ? Icon(
                      Icons.check,
                      color: Colors.blue,
                      size: 16.0,
                    )
                        : null,
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      status.title,
                      style: TextStyle(
                        color: status.isSelected ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
