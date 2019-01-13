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
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverGrid.extent(
              maxCrossAxisExtent: 150.0,
              children: scrollItems,
              childAspectRatio: 1,
            ),
            //TODO: 02 Add SliverAppBar
//            SliverAppBar(
//              title: Text('Sliver AppBar'),
//              backgroundColor: Colors.blueGrey,
//              expandedHeight: 300,
//              leading: FlutterLogo(
//                colors: Colors.red,
//              ),
//              actions: <Widget>[
//                FlutterLogo(),
//                FlutterLogo(),
//                FlutterLogo(),
//                FlutterLogo(),
//              ],
//              centerTitle: true,
//              elevation: 5,
//              bottom: TabBar(tabs: [
//                Tab(
//                  icon: Icon(Icons.access_alarm),
//                  text: "Alarms",
//                ),
//                Tab(
//                  icon: Icon(Icons.access_alarm),
//                  text: "Alarms",
//                ),
//                Tab(
//                  icon: Icon(Icons.access_alarm),
//                  text: "Alarms",
//                ),
//                Tab(
//                  icon: Icon(Icons.access_alarm),
//                  text: "Alarms",
//                ),
//              ]),
//              flexibleSpace:
//                  Container(color: Color(0x66222222), child: Center()),
////              floating: true,
////              snap: true,
//              pinned: true,
//              titleSpacing: 0,
//
//            ),
            SliverGrid.extent(
              maxCrossAxisExtent: 150.0,
              children: scrollItems,
              childAspectRatio: 1,
            ),
          ],
        ),
      ),
    );
  }
}
