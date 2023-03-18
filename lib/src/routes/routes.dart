import 'package:flutter/material.dart';

import '../screens/screens.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsArticle.routeName: (context) => const DetailsArticle()
};
