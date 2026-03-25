import 'package:counter_app_with_provider/provider/count_provider.dart';
import 'package:counter_app_with_provider/screens/count_screen_with_provider.dart';
import 'package:counter_app_with_provider/why_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: WhyProvider(),
      ),
    );
  }
}
