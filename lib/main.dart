import 'package:crouselslider/container_slider.dart';
import 'package:crouselslider/email_phone.dart';
import 'package:crouselslider/employement.dart';
import 'package:crouselslider/newstatus.dart';
import 'package:crouselslider/slider.dart';
import 'package:crouselslider/video%20slider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SliderContainer(),
    );
  }
}
