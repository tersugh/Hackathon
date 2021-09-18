import 'package:flutter/material.dart';
import 'package:hackathon/screens/home_screen.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final pages = [
    PageModel(widget: Column(children: const [Placeholder(), Text('Foo')])),
    PageModel(widget: Column(children: const [Placeholder(), Text('Bar')])),
  ];
  @override
  Widget build(BuildContext context) {
    return Onboarding(
      background: Colors.green,
      proceedButtonStyle: ProceedButtonStyle(
        proceedpButtonText: const Text('Skip'),
        proceedButtonRoute: (context) {
          return Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
            (route) => false,
          );
        },
      ),
      pages: pages,
      indicator: Indicator(
        indicatorDesign: IndicatorDesign.line(
          lineDesign: LineDesign(
            lineType: DesignType.line_uniform,
          ),
        ),
      ),
      isSkippable: true,
    );
  }
}
