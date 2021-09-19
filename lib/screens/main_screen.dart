import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          // bg
          Column(children: [
            Container(
                height: 70,
                color: Colors.green,
                margin: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/almet.png'),
                      const Text('Almetevsck')
                    ])),
            Container(
                height: 70,
                color: Colors.green,
                margin: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/almet.png'),
                      const Text('Kazan')
                    ])),
            Container(
                height: 70,
                color: Colors.green,
                margin: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/almet.png'),
                      const Text('Naberezhniy')
                    ])),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        child:
                            Image.asset('assets/icons8-about.png', width: 40)),
                    GestureDetector(
                        child: Image.asset('assets/icons8-city_hall.png',
                            width: 40)),
                    GestureDetector(
                        child: Image.asset('assets/icons8-map_marker.png',
                            width: 40),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => HomeScreen())))
                  ]),
            )
          ])
        ]),
      ),
    );
  }
}
