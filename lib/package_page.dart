import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MyPages extends StatefulWidget {
  const MyPages({super.key});

  @override
  State<MyPages> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyPages> {
  List<PageViewModel> getpages() {
    return [
      PageViewModel(
          image: Center(
            child: Image.network(
              'https://i.pinimg.com/564x/7b/57/09/7b5709885634b2c95a09fe0b5b42f233.jpg',
            ),
          ),
          title: "first image",
          body: 'dsvsvfvvfrvfrvrefd'),
      PageViewModel(
          image: Center(
            child: Image.network(
              'https://i.pinimg.com/564x/7b/57/09/7b5709885634b2c95a09fe0b5b42f233.jpg',
            ),
          ),
          title: "first image",
          body: 'dsvsvfvvfrvfrvrefd'),
      PageViewModel(
          image: Center(
            child: Image.network(
              'https://i.pinimg.com/564x/7b/57/09/7b5709885634b2c95a09fe0b5b42f233.jpg',
            ),
          ),
          title: "first image",
          body: 'dsvsvfvvfrvfrvrefd'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: IntroductionScreen(
          done: const Text("done"),
          skip: Text("skip"),
          onDone: () {},
          onSkip: () {},
          // overrideDone: const Text("data"),
          pages: getpages(),
          globalBackgroundColor: Colors.white,
          showDoneButton: true,
          showSkipButton: true,
          next: Icon(Icons.arrow_circle_right_rounded),
          dotsDecorator: DotsDecorator(
              activeColor: Colors.red[300],
              activeSize: Size(20, 10),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
          // overrideSkip: ,
        ),
      ),
    );
  }
}
