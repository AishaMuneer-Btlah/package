import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.grey
                ),
                child: Image.network('https://img.freepik.com/premium-photo/fresh-fruit-with-water-black-background-generative-ai_983314-1780.jpg')
            );
          },
        );
      }).toList(),
    ),);
  }
}
