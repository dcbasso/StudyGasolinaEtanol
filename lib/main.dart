import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gasolinaouetanol/widgets/logo.widget.dart';
import 'package:gasolinaouetanol/widgets/input.widget.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _gascontroller = new MoneyMaskedTextController();
    var _etacontroller = new MoneyMaskedTextController();

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Input(
            controller: _gascontroller,
            label: "Gasolina",
          ),
          Input(
            controller: _etacontroller,
            label: "Etanol",
          ),
          FlatButton(
            child: Text("Calcular"),
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}