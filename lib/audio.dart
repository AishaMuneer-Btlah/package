import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){

              player.play(AssetSource('audios/001.mp3'));
            },
            child: Container(
              height: 40,width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.brown,
              ),
              child: Center(child:Text('Al-Fatihah',style: TextStyle(color: Colors.white,fontSize: 18,),),) ,),),


          InkWell(
            onTap: () {
             player.pause();
             player.play(AssetSource('audios/112.mp3'));
            },
            child: Container(
              height: 40,width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.brown,
              ),
              child: Center(child:Text('Al-Ikhlass',style: TextStyle(color: Colors.white,fontSize: 18,),),) ,),),
        ],),);
  }
}
