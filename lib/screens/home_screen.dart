import 'package:flutter/material.dart';
import 'package:hackathon/models/constants.dart';
import 'package:hackathon/widgets/app_bg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    updatePreferences();
    super.initState();
  }

  void updatePreferences() {
    SharedPreferences.getInstance().then((pref) {
      pref.setBool(K.firstTime, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(child: Container());
  }
}
