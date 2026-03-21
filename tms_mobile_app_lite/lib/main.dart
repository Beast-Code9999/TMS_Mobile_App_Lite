import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms_mobile_app_lite/firebase_options.dart';
import 'package:tms_mobile_app_lite/screens/auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TmsMobileAppLite());
}

class TmsMobileAppLite extends StatelessWidget {
  const TmsMobileAppLite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TMS Mobile App",
      home: AuthGate(),
    );
  }
}