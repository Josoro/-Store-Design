import 'dart:async';

import 'package:flutter/material.dart';

import '../screens.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splas';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  //Navigate to HomeScreen.
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SplasScreen'),
      ),
    );
  }
}
