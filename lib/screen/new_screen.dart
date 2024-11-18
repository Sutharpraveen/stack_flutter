import 'package:flutter/material.dart';


class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(
          children: [
            Text("Suthar"),
            Text("Raj"),
            Text("Devilal"),
            Text("srk sir!")
          ],
        ),
        
      );
  }
}
