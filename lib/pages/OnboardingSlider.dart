import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: Colors.white,
      finishButtonText: "Let's Get Started",
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: Color.fromARGB(255, 244, 123, 10),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          color: Color.fromARGB(255, 244, 123, 10),
        ),
      ),
      background: [
        Image.asset(
          'images/intro1.png',
          scale: 2.7,
        ),
        Image.asset(
          'images/intro2.png',
          scale: 2.7,
        ),
        Image.asset(
          'images/intro3.png',
          scale: 2.7,
        ),
        Image.asset(
          'images/intro4.png',
          scale: 2.7,
        ),
      ],
      controllerColor: Color.fromARGB(255, 244, 123, 10),
      totalPage: 4,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Welcome to Senang2Pay',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'Ensuring secure payments even',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Receive QR Payment'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Scan for QR Payment'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Senang2Pay'),
            ],
          ),
        ),
      ],
    );
  }
}
