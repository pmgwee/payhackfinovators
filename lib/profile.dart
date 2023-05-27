import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Visa',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(width: 100),
                      Text(
                        'xxxx xxxx xxxx 9123',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ))
            // SizedBox(height: 20),
            // ListTile(
            //   leading: Icon(Icons.email),
            //   title: Text('john.doe@example.com'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.phone),
            //   title: Text('+1 123-456-7890'),
            // ),
          ],
        ),
      ),
    );
  }
}
