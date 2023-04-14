import 'package:flutter/material.dart';
import 'package:utsmobile/pages/login.dart';
import 'package:utsmobile/pages/menu_main.dart';
import 'package:utsmobile/pages/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Mobile Progaming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginAja(),
    );
  }
}
