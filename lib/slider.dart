import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Slidernew extends StatefulWidget {
  const Slidernew({Key? key}) : super(key: key);

  @override
  State<Slidernew> createState() => _SlidernewState();
}

class _SlidernewState extends State<Slidernew> {
  List<String> videoUrls = [
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  ];
  List<ChewieController> chewieControllers = [];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    for (var url in videoUrls) {
      chewieControllers.add(
        ChewieController(
          videoPlayerController: VideoPlayerController.network(url),
          autoPlay: false,
          looping: false,
          // Other ChewieController options as needed
        ),
      );
    }
  }

  @override
  void dispose() {
    for (var controller in chewieControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              items: chewieControllers.map((chewieController) {
                return Builder(
                  builder: (BuildContext context) {
                    return Chewie(controller: chewieController);
                  },
                );
              }).toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: BouncingScrollPhysics(),
                autoPlay: false,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: chewieControllers.asMap().entries.map((entry) {
                int index = entry.key;
                return GestureDetector(
                  onTap: () {
                    carouselController.animateToPage(index);
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    width: 7,
                    height: 7,
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == index ? Colors.red : Colors.teal,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
