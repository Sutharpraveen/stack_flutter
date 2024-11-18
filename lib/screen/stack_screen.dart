import 'package:flutter/material.dart';


class FlutterStackExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stack Examples',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Stack')),
        body: ExamplesList(),
      ),
    );
  }
}

class ExamplesList extends StatelessWidget {
  final List<Map<String, dynamic>> examples = [
    {'title': 'Simple Stack', 'widget': SimpleStack()},
    {'title': 'Overlaying Widgets', 'widget': OverlayStack()},
    {'title': 'Full-Screen Layout', 'widget': FullScreenStack()},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: examples.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examples[index]['title']),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => examples[index]['widget'],
              ),
            );
          },
        );
      },
    );
  }
}

/// Example 1: Simple Stack
class SimpleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Stack')),
      body: Center(
        child: Stack(
          children: [



            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Example 2: Overlaying Widgets
class OverlayStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Overlaying Widgets')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://via.placeholder.com/300',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(
              'Overlay Text',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                backgroundColor: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Example 3: Full-Screen Layout
class FullScreenStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Full-Screen Layout')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: Colors.yellow),
          Positioned(
            top: 50,
            right: 20,
            child: Text(
              'Top Right',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Text(
              'Bottom Left',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
