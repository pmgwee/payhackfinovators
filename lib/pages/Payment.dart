import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final String data = "12345680";
  int randomNumber = Random().nextInt(9) + 10;
  QrImage _QR = QrImage(
    data: "12345680",
    gapless: true,
    size: 250,
    errorCorrectionLevel: QrErrorCorrectLevel.H,
  );

  void _QR_generator() {
    randomNumber = Random().nextInt(9) + 10;
    setState(() {
      _QR = QrImage(
        data: data * randomNumber,
        gapless: true,
        size: 250,
        errorCorrectionLevel: QrErrorCorrectLevel.H,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Offline ',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open-sans',
                    ),
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open-sans',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    60), // Adds spacing between the "Offline Payment" text and additional lines
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          'Goh Ping Tian',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Phone: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          '0100201234',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  //Image.asset('images/qrcode.png', width: 150, height: 150),
                  _QR != null ? _QR : Container(),
                  SizedBox(height: 40),
                  Image.asset('images/barcode.png', width: 150),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'QR Code will refresh every 60 seconds',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _QR_generator,
        tooltip: 'Refresh the QR Code',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
