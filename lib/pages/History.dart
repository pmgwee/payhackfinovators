import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Payment ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open-sans',
                          ),
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open-sans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      // ADD BORDER
                      border: Border.all(
                        color: Colors.black, // Set border color here
                        width: 1.5, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 20),
                              child: Text(
                                'Payment ID: 123456',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15.0, top: 20),
                              child: Text(
                                'RM10.00',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Payment Date: 15-3-2023',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 15.0, bottom: 15),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  // Respond to button press
                                },
                                icon: Icon(Icons.add, size: 18),
                                label: Text("View Details"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 24, 103,
                                      65), // Set button background color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // ADD BORDER
                      border: Border.all(
                        color: Colors.black, // Set border color here
                        width: 1.5, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 20),
                              child: Text(
                                'Payment ID: 123456',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15.0, top: 20),
                              child: Text(
                                'RM10.00',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Payment Date: 15-3-2023',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 15.0, bottom: 15),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  // Respond to button press
                                },
                                icon: Icon(Icons.add, size: 18),
                                label: Text("View Details"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 24, 103,
                                      65), // Set button background color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // ADD BORDER
                      border: Border.all(
                        color: Colors.black, // Set border color here
                        width: 1.5, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 20),
                              child: Text(
                                'Payment ID: 123456',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15.0, top: 20),
                              child: Text(
                                'RM10.00',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Payment Date: 15-3-2023',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 15.0, bottom: 15),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  // Respond to button press
                                },
                                icon: Icon(Icons.add, size: 18),
                                label: Text("View Details"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 24, 103,
                                      65), // Set button background color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
