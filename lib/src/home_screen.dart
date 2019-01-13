import 'dart:math';
import 'package:flutter/material.dart';

//TODO: 01 We begin with a CustomScrollView, randomColor, and coloredCard
class HomeScreen extends StatelessWidget {
  final Random _random = Random(56);
  Color get randomColor => Color(0xFF000000 + _random.nextInt(0x00FFFFFF));

  Widget coloredCard(Color color) => Card(
        color: color,
        child: SizedBox(
          height: 200,
          child: Center(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView();
  }
}
