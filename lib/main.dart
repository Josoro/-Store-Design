import 'package:clothing_store/src/screens/screens.dart';
import 'package:clothing_store/src/theme/my_theme.dart';
import 'package:flutter/material.dart';

import 'src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing Store',
      theme: myTheme,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
