import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gasolinaouetanol/widgets/logo.widget.dart';
import 'package:gasolinaouetanol/widgets/submit.widget.dart';
import 'package:gasolinaouetanol/widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gascontroller = new MoneyMaskedTextController();
  var _etacontroller = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar Etanol";

  @override
  Widget build(BuildContext context) {  

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),    
          _completed ? Success(
            result: _resultText, 
            reset: (){},
          ) 
          :   
          SubmitForm(
            gasCtrl: _gascontroller, 
            etaCtrl: _etacontroller, 
            busy: _busy, 
            submitFunc: calculate,
          ),          
          // TODO: Remove commented code below.        
          // Success(
          //   result: "Compensa utilizar X",
          //   reset: (){},
          // ),
          // Input(
          //   controller: _gascontroller,
          //   label: "Gasolina",
          // ),
          // Input(
          //   controller: _etacontroller,
          //   label: "Etanol",
          // ),          
        ],
      ),
    );
  }

  Future calculate() {  
    double etanol = double.parse(_etacontroller.text.replaceAll(new RegExp(r'[,.]'), ''),) / 100;
    double gasolina = double.parse(_gascontroller.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double result = etanol / gasolina;

    setState(() {
      _completed = false;
      _busy = true;
    });
  }

}
