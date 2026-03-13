import 'package:flutter/material.dart';

class StatelesswidgetExample extends StatelessWidget {
  StatelesswidgetExample({super.key});

  int numb = 0;

  @override
  Widget build(BuildContext context) {
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
          numb++;
          print(numb);
          /**
           * yahn pr onpress se value to change ho rhi ha and console pr show bi ho rhi ha lekin ui me update nhi hogi because it is stateless widget
           */
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
