import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPhrase{
    var resultText = 'You Did It!';
    if(resultScore <=8){
      resultText = "You are Awsome & Inoccent!";
    } else if(resultScore <=12){
      resultText = "Pretty Likabale!";
    } else if(resultScore <=16){
      resultText = "Pretty Strange!";
    }else {
      resultText = "Pretty bedddd!";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          children: <Widget>[
            Text(
                resultPhrase,
                style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
            ),
            FlatButton(onPressed:() => resetHandler(), child: Text('Restart Quiz!!'),
            textColor: Colors.blue,),
          ],
        ),
    );
  }
}
