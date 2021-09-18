import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const [
      Expanded(child: Placeholder()),
      Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Text('Loading...'))
    ]));
  }
}
