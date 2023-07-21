import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'container.dart';

class SliderContainer extends StatefulWidget {
  const SliderContainer({Key? key}) : super(key: key);

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(items: [
            Containernew(),
          ],
            options: CarouselOptions(
            scrollPhysics: BouncingScrollPhysics(),
            autoPlay: false,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {

              });
            },
          ),)
        ],
      ),
    );
  }
}
