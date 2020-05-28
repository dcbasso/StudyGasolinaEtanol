import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gasolinaouetanol/widgets/input.widget.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {

  var gasCtrl = new MoneyMaskedTextController();
  var etaCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.etaCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
              label: "Gasolina", 
              controller: gasCtrl
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
              label: "Etanol", 
              controller: etaCtrl
          ),
        ),
        LoadingButton(
          busy: busy,
          func: submitFunc,
          invert: false,
          text: "CALCULAR"
        ),
      ],
    );
  }
}