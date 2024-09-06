import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
class FlutterSpinkit extends StatelessWidget {

  const FlutterSpinkit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpinKitWave(color: Colors.grey,),
       SizedBox(height: 30,),
       SpinKitPumpingHeart(color: Colors.red,),
        SizedBox(height: 30,),
        SpinKitHourGlass(color: Colors.yellow)
      ],);


      Center(child: SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.red : Colors.green,
          ),
        );
      },
    ),);
  }
}
