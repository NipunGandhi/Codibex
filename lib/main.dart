import 'package:flutter/material.dart';

import 'screens/homepage.dart';

//RotationTransition
//Transform.rotate
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Satoshi-Variable",
      ),
      home: const MyHomePage(),
    );
  }
}
