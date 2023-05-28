import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:payhackfinovators/pages/Payment.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

class FingerprintAuth extends StatefulWidget {
  // const FingerprintAuth({Key? key}) : super(key: key);

  @override
  _FingerprintAuthState createState() => _FingerprintAuthState();
}

class _FingerprintAuthState extends State<FingerprintAuth> {
  final LocalAuthentication auth = LocalAuthentication();

  String msg = "You are not authorized.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      child: Column(
        children: [
          Center(
            child: Text(msg),
          ),
          Divider(),
          ElevatedButton(
              onPressed: () async {
                try {
                  bool hasbiometrics = await auth
                      .canCheckBiometrics; //check if there is authencations,

                  if (hasbiometrics) {
                    List<BiometricType> availableBiometrics =
                        await auth.getAvailableBiometrics();
                    if (Platform.isIOS) {
                      if (availableBiometrics.contains(BiometricType.face)) {
                        bool pass = await auth.authenticate(
                            localizedReason: 'Authenticate with fingerprint',
                            options: const AuthenticationOptions(
                                biometricOnly: true));

                        if (pass) {
                          msg = "You are Autenciated.";
                          setState(() {
                            Navigator.pushNamed(context, "/navbar");
                          });
                        }
                      }
                    } else {
                      if (availableBiometrics
                          .contains(BiometricType.fingerprint)) {
                        bool pass = await auth.authenticate(
                            localizedReason:
                                'Authenticate with fingerprint/face',
                            options: const AuthenticationOptions(
                                biometricOnly: true));
                        if (pass) {
                          msg = "You are Authenicated.";
                          setState(() {
                            Navigator.pushNamed(context, "/navbar");
                          });
                        }
                      }
                    }
                  } else {
                    msg = "You are not alowed to access biometrics.";
                  }
                } on PlatformException catch (e) {
                  msg = "Error while opening fingerprint/face scanner";
                }
              },
              child: Text("Authenticate with Fingerprint/Face Scan")),
          ElevatedButton(
              onPressed: () async {
                try {
                  bool pass = await auth.authenticate(
                      localizedReason: 'Authenticate with pattern/pin/passcode',
                      options:
                          const AuthenticationOptions(biometricOnly: false));
                  if (pass) {
                    msg = "You are Authenticated.";
                    setState(() {
                      Navigator.pushNamed(context, "/navbar");
                    });
                  }
                } on PlatformException catch (e) {
                  msg = "Error while opening fingerprint/face scanner";
                }
              },
              child: Text("Authenticate with Pin/Passcode/Pattern Scan")),
        ],
      ),
    ));
  }
}
