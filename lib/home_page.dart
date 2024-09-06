import 'package:flutter/material.dart';
import 'package:package2/audio.dart';
import 'package:package2/carousel.dart';
import 'package:package2/flutter_spinkit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(title: Text('Packages'),backgroundColor: Colors.black,
        bottom: TabBar(tabs: [Text('Spinkit'),Text('Carousel'),Text('Audio')],),
      ),
      body: TabBarView(children: [
      FlutterSpinkit(),
        Carousel(),
        Audio(),
      ],),
    ));
  }
}
