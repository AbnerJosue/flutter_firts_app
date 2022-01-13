import 'package:flutter/material.dart';
// import 'package:my_app/screens/counter_screen.dart';
import 'package:my_app/screens/counter_screen_optimizacion.dart';
// import 'package:my_app/screens/home_dart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: CounterScreen(),
    );
  }
}
