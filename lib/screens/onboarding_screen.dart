import 'package:flutter/material.dart';
import 'package:hackathon/screens/home_screen.dart';
import 'package:hackathon/widgets/app_bg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final pages = [
    PageViewModel(
        title: 'About Tatarstan',
        reverse: true,
        body: 'Tatarstan Map',
        image: Image.asset('assets/image.jpeg', width: 300, height: 400)),
    PageViewModel(
      title: '',
      bodyWidget: Image.asset(
        'assets/image3.jpeg',
      ),
      // Image.asset('assets/image.jpeg', width: 300, height: 400)
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AppBackground(
      context2: context,
      child: IntroductionScreen(
        pages: pages,
        next: const Icon(Icons.arrow_forward),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const HomeScreen())),
        globalBackgroundColor: Colors.transparent,
      ),
    );
  }
}
