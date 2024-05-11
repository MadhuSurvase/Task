import 'package:flutter/material.dart';

class ExtractRandom extends StatefulWidget {
  const ExtractRandom({super.key});

  @override
  State<ExtractRandom> createState() => _ExtractRandomState();
}

class _ExtractRandomState extends State<ExtractRandom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
              child: Padding(
        padding: const EdgeInsets.only(top: 30,left:5,right:5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 25),
              child: Text(
                'Extract Randomly',
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
                        'Select Result',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.search_sharp,
                        color: Colors.black,
                        size: 25,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  height: 40,
                  width: 160,
                  child: Row(
                    children: [
                      Text(
                        'Extract Followers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black,
                        size: 25,
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
                    Center(child: Text('SR NO', style: TextStyle(color: Colors.black))),
                    Center(child: Text('Result Found', style: TextStyle(color: Colors.black))),
                    Center(child: Text('Select All', style: TextStyle(color: Colors.black))),
                  ]),
                  TableRow(
                    children: [
                      Center(child: Text('1', style: TextStyle(color: Colors.black))),
                      Center(child: Text('abc', style: TextStyle(color: Colors.black))) ,
                      Center(child: Text('true', style: TextStyle(color: Colors.black))),
                    ],
                  ),
                    TableRow(
                      children:[
                        Center(child: Text('2', style: TextStyle(color: Colors.black))),
                        Center(child: Text('xyz', style: TextStyle(color: Colors.black))),
                        Center(child: Text('false', style: TextStyle(color: Colors.black)))
                      ]
                    )
                ],
              ),
            ),

             SizedBox(height: 25,),
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
