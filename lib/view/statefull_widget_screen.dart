import 'package:flutter/material.dart';

class StatefullWidgetScreen extends StatefulWidget {
  const StatefullWidgetScreen({super.key});

  @override
  State<StatefullWidgetScreen> createState() => _StatefullWidgetScreenState();
}

class _StatefullWidgetScreenState extends State<StatefullWidgetScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PROVIDER TUTORIALS'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(count.toString(), style: TextStyle(fontSize: 50))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
