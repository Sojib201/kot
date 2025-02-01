import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kot/utils/styles.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Utils.secondaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            iconEnabledColor: Utils.primaryColor,
                            iconSize: 45,
                            hint: Text(
                              'Kitchen-1',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Utils.primaryColor),
                            ),
                            alignment: Alignment.centerRight,
                            items:
                                <String>['A', 'B', 'C', 'D'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Utils.thirdcolor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Order in Queue: ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Utils.secondaryColor),
                            ),
                            Container(
                              height: 48,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Utils.secondaryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(0, 4),
                                    ),
                                  ]),
                              child: Center(
                                  child: Text('56', style: Utils.heading1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Utils.thirdcolor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total order delivered: ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Utils.secondaryColor),
                            ),
                            Expanded(
                              child: Container(
                                height: 48,
                                width: 65,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Utils.secondaryColor, width: 4),
                                    borderRadius: BorderRadius.circular(12),
                                    color: Utils.primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.black.withOpacity(0.4),
                                        offset: Offset(0, 4),
                                      ),
                                    ]),
                                child: Center(
                                    child: Text('38', style: Utils.heading2)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:10,
              ),
              Expanded(
                flex: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Utils.secondaryColor),
                        color: Utils.primaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Utils.secondaryColor,
                              border: Border.all(color: Utils.secondaryColor),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Center(child: Text('1')),
                          ),
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Utils.secondaryColor,
                              border: Border.all(color: Utils.secondaryColor),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Text('dfsdf'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Container(
                          height: 400,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: Utils.secondaryColor),
                            color: Utils.primaryColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Utils.secondaryColor,
                                  border: Border.all(color: Utils.secondaryColor),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(child: Text('1')),
                              ),
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Utils.secondaryColor,
                                  border: Border.all(color: Utils.secondaryColor),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text('dfsdf'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 400,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: Utils.secondaryColor),
                            color: Utils.primaryColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Utils.secondaryColor,
                                  border: Border.all(color: Utils.secondaryColor),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(child: Text('1')),
                              ),
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Utils.secondaryColor,
                                  border: Border.all(color: Utils.secondaryColor),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text('dfsdf'),
                              ),
                            ],
                          ),
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
