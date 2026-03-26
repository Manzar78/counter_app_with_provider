import 'package:counter_app_with_provider/provider/count_provider.dart';
import 'package:counter_app_with_provider/provider/example_one_provider.dart';
import 'package:counter_app_with_provider/screens/count_screen_with_provider.dart';
import 'package:counter_app_with_provider/screens/exampleone.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: Exampleone(),
      ),
    );
  }
}
