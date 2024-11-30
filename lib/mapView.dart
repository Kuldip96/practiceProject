import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final List<Map<String, String>> mapData = [
    {"id": "1", "name": "kuldip"},
    {"id": "2", "name": "raj"},
    {"id": "3", "name": "pradip"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: mapData.map((toElement) {
          return ListTile(
            title: Text(toElement["id"].toString()),
            subtitle: Text(toElement["name"].toString()),
          );
        }).toList(),
      ),
    );
  }
}
