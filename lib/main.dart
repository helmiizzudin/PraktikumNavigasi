import 'package:flutter/material.dart';
import 'package:navigasi/screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 

      title: 'Daftar Belanja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListScreen(),
    );
  }
}