
import 'package:dataextraction/extract_random.dart';
import 'package:dataextraction/extract_select.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _randomController = TextEditingController();
  TextEditingController _selectController = TextEditingController();
  TextEditingController _dataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 70),
          child: Column(
            children: [
              Text('Extractor HOME Page',style: TextStyle(color: Colors.black,fontSize: 20,),),
              SizedBox(height: 30,),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtractRandom()));
                  },
                  child: Text('Extract Randomly',style: TextStyle(color: Colors.black),)),
              SizedBox(height: 10,),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ExtractSelect(),));
                  },
                  child: Text('Extract Selectively',style: TextStyle(color: Colors.black),)),
              SizedBox(height: 10,),

              ElevatedButton(
                  onPressed: (){},
                  child: Text('Extract data',style: TextStyle(color: Colors.black),)),

            ],
          ),
        ),
      ),

    );
  }
}
