import 'package:flutter/material.dart';

class EmploymentStatus {
  final String title;
  bool isSelected;

  EmploymentStatus({required this.title, this.isSelected = false});
}

class StatusList extends StatefulWidget {
  @override
  _StatusListState createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    status.title,
                    style: TextStyle(
                      color: status.isSelected ? Colors.blue : Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  if (status.isSelected)
                    Icon(
                      Icons.check,
                      color: Colors.blue,
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