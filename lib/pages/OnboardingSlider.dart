import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: Colors.white,
      finishButtonText: "Let's Get Started",
      onFinish: () {
        Navigator.pushNamed(context, "/payment");
      },
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
          scale: 2.8,
        ),
        Image.asset(
          'images/intro3.png',
          scale: 2.7,
        ),
        Image.asset(
          'images/intro4.png',
          scale: 2.5,
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
                height: 400,
              ),
              Text(
                'Welcome to Senang2Pay',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Ensuring secure payments even \n without internet access',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
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
                height: 400,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 129, 129, 129)),
                ),
              ),
              Text(
                'Receive QR Payment',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Enables the offline transactions \n using QR codes',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
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
                height: 400,
              ),
              Text(
                'Scan for QR Payment',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Quick and Easy Payments \n with a Simple Scan',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 380,
              ),
              Text(
                'Senang2Pay',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 214, 89, 0),
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: Text(
                  'Seamless Payments \n Anytime, Anywhere!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
