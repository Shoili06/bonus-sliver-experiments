import 'dart:math';
import 'package:flutter/material.dart';

//TODO: 01 Make a StatelessWidget Called HomeScreen
class HomeScreen extends StatelessWidget {
//  //TODO: 02 Make a Random Color Generator
//  final Random _random = Random(56);
//  Color get randomColor => Color(0xFF000000 + _random.nextInt(0x00FFFFFF));

//  //TODO: 03 Make a Colored Card Generator
//  Widget coloredCard(Color color) => Card(
//        color: color,
//        child: SizedBox(
//          height: 200,
//          child: Center(),
//        ),
//      );

  @override
  Widget build(BuildContext context) {
    //TODO: 04 Make the Widget return a [CustomScrollView]
        return Container();
//    return Scaffold(
//      body: CustomScrollView(
//        slivers: <Widget>[
////          //TODO: 05 Add a SliverList
////          SliverList(
////            //TODO: 07 Use SliverListBuilder Delegate instead
////////            TODO: 06 Add a List Delegate
//////            delegate: SliverChildListDelegate(<Widget>[
//////              coloredCard(randomColor),
//////              coloredCard(randomColor),
//////              coloredCard(randomColor),
//////            ]),
//////            delegate: SliverChildBuilderDelegate(
//////              //infinite scrolling until builder returns a [null],
//////              (context, position) => coloredCard(randomColor),
////////              //childCount to limit the number of cards
////////              childCount: 3,
//////            ),
////          ),
//        ],
//      ),
//    );
  }
}
