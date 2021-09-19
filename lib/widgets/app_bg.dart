import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final BuildContext context2;
  final bool showBackButton;
  const AppBackground(
      {Key? key,
      required this.context2,
      required this.child,
      this.showBackButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.green, Colors.white, Colors.red],
      ))),
      child,
      if (showBackButton)
        Positioned(
            top: 20,
            left: 20,
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.of(context2).pop()))
    ]));
  }
}
