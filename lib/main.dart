import 'package:flutter/material.dart';
import 'package:slivers/src/home_screen.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sliver Experiments",
      home: HomeScreen(),
    );
  }
}
