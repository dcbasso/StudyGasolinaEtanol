import 'package:flutter/material.dart';
import 'package:gasolinaouetanol/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etanol ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(      
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage()
    );
  }
}