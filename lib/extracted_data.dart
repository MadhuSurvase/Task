import 'package:dataextraction/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtractedData extends StatefulWidget {
  const ExtractedData({Key? key}) : super(key: key);

  @override
  State<ExtractedData> createState() => _ExtractedDataState();
}

class _ExtractedDataState extends State<ExtractedData> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 70),
        child: Column(
          children: [
            Container(
              child: Text(
                'Extracted Data',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Text('File', style: TextStyle(color: Colors.black,fontSize: 18)),
            ),
            SizedBox(height: 5),

            Column(
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(width:2)),
                  height: 40,
                  width: 200,
                  child: Column(
                    children: [
                      Text('File1',style: TextStyle(color: Colors.black,fontSize: 18,),),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(border: Border.all(width:2)),
                  height: 40,
                  width: 200,
                  child: Column(
                    children: [
                      Text('File2',style: TextStyle(color: Colors.black,fontSize: 18,),),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(border: Border.all(width:2)),
                  height: 40,
                  width: 200,
                  child: Column(
                    children: [
                      Text('File3',style: TextStyle(color: Colors.black,fontSize: 18,),),

                    ],
                  ),
                ),

              ],
            ),

            SizedBox(height: 20,),

            ElevatedButton(
             // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
                onPressed: (){},
                child: Text('Save',style: TextStyle(color: Colors.black),)),
            SizedBox(height: 20,),
            ElevatedButton(
              // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
                },
                child: Text('Next',style: TextStyle(color: Colors.black),))
          ],
        ),
      ),

    );
  }
}
