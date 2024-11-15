import 'package:flutter/material.dart';
import 'package:unhooked/view/auth_gate_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Firebase.initializeApp(options: DefaultFirebaseOptions.windows);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unhooked',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const AuthGatePage(),
    );
  }
}
