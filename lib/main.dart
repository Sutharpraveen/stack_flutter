import 'package:all_stack/screen/stack_screen.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Example",
      theme: ThemeData(),
      home: FlutterStackExamples(),
    );
  }
}
