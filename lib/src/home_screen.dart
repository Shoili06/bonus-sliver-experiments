import 'dart:math';
import 'package:flutter/material.dart';

//TODO: 01 We begin with a CustomScrollView, randomColor, and coloredContainer
class HomeScreen extends StatelessWidget {
  final Random _random = Random(56);
  Color get randomColor => Color(0xFF000000 + _random.nextInt(0x00FFFFFF));

  Widget coloredContainer(Color color) => Container(
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    List<Widget> scrollItems =
        List.generate(52, (int index) => coloredContainer(randomColor));

    return Scaffold(
      body: CustomScrollView(
        //This is how you specify the scroll direction, this is a part of the
        // ScrollView, and not its children, and we can always nest :-p
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          //TODO: 02 Add a SliverGrid. Three Constructors available :-p
          //Count Constructor to specify the count of items in the cross axis
//          //TODO: 02A SliverGrid.count
//          SliverGrid.count(
//            crossAxisCount: 4,
//            children: scrollItems,
//            crossAxisSpacing: 10,
//            mainAxisSpacing: 5,
//            childAspectRatio: 1,
//          ),
//          //TODO: 02B SliverGrid.extent
//          //Extent Constructor to specify
//          SliverGrid.extent(
//            maxCrossAxisExtent: 150.0,
//            children: scrollItems,
//            crossAxisSpacing: 10,
//            mainAxisSpacing: 5,
//            childAspectRatio: 1,
//          ),
//          //TODO: 02C SliverGrid
//          //Default Constructor needs an explicit gridDelegate
//          //Use this for more crazy stuff
//          SliverGrid(
//              delegate: SliverChildBuilderDelegate(
//                  (BuildContext context, int position) =>
//                      coloredCard(randomColor),
//                  //This is where you specify the number of children
//                  childCount: 1000),
//              gridDelegate:
//                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8)),
        ],
      ),
    );
  }
}
