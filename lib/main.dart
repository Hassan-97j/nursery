import 'package:flutter/material.dart';
import 'package:nursery/constants.dart';
import 'package:nursery/screens/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: secondaryColor,
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: primaryTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
