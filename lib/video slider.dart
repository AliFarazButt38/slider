import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoNew extends StatefulWidget {
  const VideoNew({Key? key}) : super(key: key);

  @override
  State<VideoNew> createState() => _VideoNewState();
}

class _VideoNewState extends State<VideoNew> {
  List<String> videoUrls = [
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  ];
  List<ChewieController> chewieControllers = [];

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
            Stack(
              children: [
                CarouselSlider(
                  items: chewieControllers.map((chewieController) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Chewie(controller: chewieController);
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      // Handle page change if needed
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
