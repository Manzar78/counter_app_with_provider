import 'package:flutter/material.dart';

class StatefullwidgetExample extends StatefulWidget {
  const StatefullwidgetExample({super.key});

  @override
  State<StatefullwidgetExample> createState() => _StatefullwidgetExampleState();
}

class _StatefullwidgetExampleState extends State<StatefullwidgetExample> {
  int numb = 0;

  @override
  Widget build(BuildContext context) {
    print("Starting widget building");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(numb.toString(), style: TextStyle(fontSize: 50))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numb++;
            print(numb);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
