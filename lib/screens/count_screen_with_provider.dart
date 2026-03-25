import 'package:counter_app_with_provider/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountScreenWithProvider extends StatefulWidget {
  const CountScreenWithProvider({super.key});

  @override
  State<CountScreenWithProvider> createState() =>
      _CountScreenWithProviderState();
}

class _CountScreenWithProviderState extends State<CountScreenWithProvider> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("Widget build ");
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
              value.getcount.toString(),
              style: TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
