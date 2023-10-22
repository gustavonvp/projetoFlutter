import 'package:flutter/material.dart';
import 'package:project_flutter/components/reusable_card.dart';
import 'package:project_flutter/pages/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi,
      required this.result,
      required this.interpretation,
      required this.textResult});

  final String bmi;
  final String result;
  final String interpretation;
  final TextStyle textResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              'Seu Resultado',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result,
                    textAlign: TextAlign.center,
                    style: textResult,
                  ),
                  Text(
                    bmi,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kLabelTextStyle,
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Adicionado'),
          )
        ],
      ),
    );
  }
}
