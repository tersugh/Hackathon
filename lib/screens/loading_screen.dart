import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      'assets/image2.jpeg',
      height: MediaQuery.of(context).size.height,
    ));
  }
}
