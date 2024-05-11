import 'package:dataextraction/select_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtractSelect extends StatefulWidget {
  const ExtractSelect({super.key});

  @override
  State<ExtractSelect> createState() => _ExtractSelectState();
}

class _ExtractSelectState extends State<ExtractSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Text(
                'Extract Selectevly',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  height: 40,
                  width: 160,
                  child: Row(
                    children: [
                      Text(
                        'Select Location',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLocation(),));
                          },
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  height: 40,
                  width: 180,
                  child: Row(
                    children: [
                      Text(
                        'Select City/State',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLocation(),));
                          },
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 30,
                          )),

                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  height: 40,
                  width: 160,
                  child: Row(
                    children: [
                      Text(
                        'Business Type',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  height: 40,
                  width: 180,
                  child: Row(
                    children: [
                      Text(
                        'Business Stage',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Center(
                        child: Text('SR NO',
                            style: TextStyle(color: Colors.black))),
                    Center(
                        child: Text('Result Found',
                            style: TextStyle(color: Colors.black))),
                    Center(
                        child: Text('Select All',
                            style: TextStyle(color: Colors.black))),
                  ]),
                  TableRow(
                    children: [
                      Center(
                          child:
                              Text('1', style: TextStyle(color: Colors.black))),
                      Center(
                          child: Text('abc',
                              style: TextStyle(color: Colors.black))),
                      Center(
                          child: Text('true',
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                  TableRow(children: [
                    Center(
                        child:
                            Text('2', style: TextStyle(color: Colors.black))),
                    Center(
                        child:
                            Text('xyz', style: TextStyle(color: Colors.black))),
                    Center(
                        child: Text('false',
                            style: TextStyle(color: Colors.black)))
                  ])
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Extract All',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    ));
  }
}
