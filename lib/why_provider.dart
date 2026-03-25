import 'dart:async';
import 'package:counter_app_with_provider/provider/count_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("------- MY_LOG:     1");
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Adding Timer in STF")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CountProvider>(
            builder: (context, value, child) => Text(
              "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Consumer<CountProvider>(
            builder: (context, value, child) => Center(
              child: Text(
                value.getcount.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
