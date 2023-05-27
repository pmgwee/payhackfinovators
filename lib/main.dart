import 'package:flutter/material.dart';
import 'package:payhackfinovators/pages/OnboardingSlider.dart';
import 'package:payhackfinovators/pages/Payment.dart';
import 'package:payhackfinovators/pages/Profile.dart';
import 'package:payhackfinovators/pages/NavBar.dart';
import 'package:payhackfinovators/pages/Scanner.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/onboardingslider',
        routes: <String, WidgetBuilder>{
          '/onboardingslider': (BuildContext context) => OnboardingSlider(),
          '/navbar': (BuildContext context) => NavBar(),
          '/payment': (BuildContext context) => Payment(),
          '/profile': (BuildContext context) => Profile(),
        });
  }
}
