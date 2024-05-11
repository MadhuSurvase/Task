import 'package:dataextraction/homepage.dart';
import 'package:flutter/material.dart';
import 'extract_random.dart';
import 'extract_select.dart';
import 'extracted_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black26),
      ),
      home: ExtractedData(),
    );
  }
}
