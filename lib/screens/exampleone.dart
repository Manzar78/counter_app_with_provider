import 'package:counter_app_with_provider/provider/count_provider.dart';
import 'package:counter_app_with_provider/provider/example_one_provider.dart';
import 'package:counter_app_with_provider/screens/count_screen_with_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Exampleone extends StatefulWidget {
  const Exampleone({super.key});

  @override
  State<Exampleone> createState() => _ExampleoneState();
}

class _ExampleoneState extends State<Exampleone> {
  double val = 0;

  @override
  Widget build(BuildContext context) {
    print("+++++++++++++++++++++Widget building");
    return Scaffold(
      appBar: AppBar(title: Text("Multiprovider Example")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CountScreenWithProvider(),
                ),
              );
            },
            child: Text("Go to Count Screen with Provider"),
          ),
          Consumer<ExampleOneProvider>(
            builder: (context, provider, child) => Slider(
              value: val,
              min: 0,
              max: 1,
              onChanged: (value) {
                val = value;
                provider.setValue = value;
                print("Slider value changed to: $value");
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<ExampleOneProvider>(
                builder: (context, provider, child) => Container(
                  color: Colors.red.withValues(alpha: provider.value),
                  height: 100,
                  width: 180,
                ),
              ),
              Consumer<ExampleOneProvider>(
                builder: (context, provider, child) => Container(
                  color: Colors.green.withValues(alpha: provider.value),
                  height: 100,
                  width: 180,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
